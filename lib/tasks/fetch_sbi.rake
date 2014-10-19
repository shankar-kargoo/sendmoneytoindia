namespace :fetch_sbi do
	desc "fetch fx rates from sbi"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_sbi_rates: :environment do
		
		url = "http://www.sbical.com/exchange-rates.aspx"
		doc = Nokogiri::HTML(open(url))
		result = doc.at_xpath('//td[contains(text(), "$ 5,000.00 to less than $ 10,000.00")]/text()/../../td[2]/text()').to_s
		rate = result.to_f
		puts rate
		FxSbi.create!(:rate => rate)
	end
end