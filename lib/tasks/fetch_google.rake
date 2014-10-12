namespace :fetch_google do
	desc "fetch fx rates from xoom"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_google_rates: :environment do
		url = "http://www.bloomberg.com/quote/USDINR:CUR"
		doc = Nokogiri::HTML(open(url))
		result =  doc.at_css(".price").text
		rate = result.to_f
		FxGoogle.create!(:rate => rate)
	end
end

