namespace :fetch_rti do
	desc "fetch fx rates from rti"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_rti_rates: :environment do
		url = "https://www.remit2india.com/sendmoneytoindia/UnitedStates/index.jsp"
		doc = Nokogiri::HTML(open(url))
		result =  doc.at_css(".exRate").text.to_s
		rate = result.to_f
		FxRti.create!(:rate => rate)
	end

end
