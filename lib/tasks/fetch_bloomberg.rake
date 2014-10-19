namespace :fetch_bloomberg do

	desc "fetch fx rates from bloomberg"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_bloomberg_rates: :environment do
		url = "http://www.bloomberg.com/quote/USDINR:CUR"
		doc = Nokogiri::HTML(open(url))
		result =  doc.at_css(".price").text
		rate = result.to_f
		FxBloomberg.create!(:rate => rate)
	end
end

