require 'uri'

class Url
  def self.build options, page = nil
    url = Configuration::Url.base_url
    params = []

    if options[:type] == 'division'
      params << ['SKC', '']
      params << ['TDK', options[:id]]
    else
      params << ['SKC', options[:id]]
      params << ['TDK', '']
    end

    params << ['MOD', options[:mode]]
    params << ['YFR', options[:year_from]]
    params << ['YTO', options[:year_to]]
    params << ['YOU', options[:usage]]
    params << ['PG',  page || options[:page]]
    params << ['LATEST_YEAR', options[:last_year]]
    params << ['CHI', options[:chi]]
    params << ['PFR', options[:pfr]]
    params << ['PTO', options[:pto]]
    params.map! {|param| param.join '=' }
    url = url + '?' + params.join('&')
    URI.encode url
  end

  private

  def validate
    
  end

  def sanitize
    
  end
end