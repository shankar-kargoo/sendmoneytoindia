namespace :fetch_google do
	desc "fetch fx rates from google"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_google_rates: :environment do
		
		url = "https://www.google.com/finance?q=USDINR"
		doc = Nokogiri::HTML(open(url))
		result =  doc.at_css(".bld").text.to_s
		rate = result[0,6].to_f
		FxGoogle.create!(:rate => rate)
	end
end