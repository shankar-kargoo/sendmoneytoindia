namespace :fetch_wu do
	desc "fetch fx rates from wu"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_wu_rates: :environment do
		url = "https://www.westernunion.com/us/en/send-money-to-india.html?src=paid_gg_corridor_fourninenine_fxzerofee&utm_content=sdjwCPmuZ|dc_pcrid_38337993467_mt_b_kw_western%20union%20exchange%20rupee&gclid=CI2b0s6PpsECFY17fgodhrAATg"
		doc = Nokogiri::HTML(open(url))

	end

end

