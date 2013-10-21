# encoding: utf-8
require 'open-uri'

begin
  require 'nokogiri'
rescue LoadError => e
  puts "This API depends on \'NOKOGIRI\'."
  puts "Please exec \'gem install nokogiri\' and read official site. => [ http://nokogiri.org ]"
  exit false
end

class Scraping
  def self.exec url
    data = []

    doc = Nokogiri::HTML(open(url).read, url)
    doc.css('.datalist').each do |element|
      count = 0

      tmp = Configuration::Scraping.defaults.clone
      element.css('.datalistline').each do |line|
        count += 1

        case count
        when 1
          tmp[:no] = line.css('.datavalue').first.content.strip
          tmp[:check_data] = line.css('.datavalue').last.content.strip
        when 2
          tmp[:address] = line.css('.datavalue2').first.content.gsub('地図で確認する', '').gsub(/　$/, '').strip
        when 4
          tmp[:price] = line.css('.datavalue').first.content.strip
        when 6
          tmp[:structure] = line.css('.datavalue2').first.content.strip
        end
      end

      data << tmp
      print "\e[32m.\e[0m"
    end

    puts

    data
  end
end
