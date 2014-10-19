namespace :fetch_icici do
	desc "fetch fx rates from icici"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_icici_rates: :environment do
		
		url = "http://www.icicibank.com/nri-banking/money_transfer/money-transfer-rates.page?"
		doc = Nokogiri::HTML(open(url))
		result = doc.at_xpath('//p[contains(text(), "USA")]/text()').to_s
		rate = result[8,6].to_f
		FxIcici.create!(:rate => rate)
	end
end