namespace :fetch_hdfc do
	desc "fetch fx rates from hdfc"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_hdfc_rates: :environment do
		
		url = "http://www.hdfcbank.com/nri_banking/Foreign_Exchng_Rates/Foreign_Exchng_Rates.asp"
		doc = Nokogiri::HTML(open(url))
		result = doc.at_xpath('//td[contains(text(), "USD")]/text()/../../td[3]/text()').to_s
		rate = result.to_f
		FxHdfc.create!(:rate => rate)

	end
end