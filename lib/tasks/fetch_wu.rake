namespace :fetch_wu do
  desc "fetch fx rates from wu"
  require 'mechanize'
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
 
  task fetch_wu_rates: :environment do
    url = "https://www.westernunion.com/us/en/send-money-to-india.html"
    doc = Nokogiri::HTML(open(url))
    quote_div = doc.at_xpath('//div[contains(text(), "locked-in exchange rate: ")]')
    rate = quote_div.at_css('span:last-of-type').text.to_f
    FxWu.create!(:rate => rate)
  end
end