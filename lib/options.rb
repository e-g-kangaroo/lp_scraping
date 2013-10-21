require 'optparse'

class Options
  def self.parser
    options = Configuration::Options.defaults

    option = OptionParser.new do |parser|
      parser.version = VERSION
      parser.banner = Configuration::Options.banner

      Configuration::Options.accepts.each do |key, config|
        parser.on *config do |arg|
          options[key] = arg
        end
      end
    end

    begin
      option.parse! $*
      options[:id] = $*[0]

      raise ArgumentError.new "\"prace id\" is required." unless options[:id]
      Configuration::Options.required.each do |key|
        raise ArgumentError.new "\"#{key}\" option is required." unless options[key]
      end
    rescue => e
      puts e.message
      exit false
    end

    return options
  end
end
