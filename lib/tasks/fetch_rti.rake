namespace :fetch_rti do
	desc "fetch fx rates from rti"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_rti_rates: :environment do
		url = "http://exchangerates.remit2india.com/US_Offer_2014/index.asp?keyw=%2Bremittance%20%2Bto%20%2Bindia&gclid=CM-X54KUpsECFROTfgodSy8Ahg#."
		doc = Nokogiri::HTML(open(url))
		result =  doc.at_css(".exchange-rates-red").text
		rate = result[9, 5].to_f
		FxRti.create!(:rate => rate)
	end

end