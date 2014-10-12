namespace :fetch_xoom do
	desc "fetch fx rates from xoom"
	require 'mechanize'
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'

	task fetch_xoom_rates: :environment do
		url = "https://www.xoom.com/india/send-money?gclid=CN2i7tbRpMECFQOSfgodvJgAwg&languageCode=en&_rt=kac-all-branded-google-xoombrandedsearch-us-en&cid=ps_brd_dsk_all_all_pd__gog_gxbu___ad_acq__us_"
		doc = Nokogiri::HTML(open(url))
		result =  doc.at_css(".fx-rate").text
		rate = result[8, 7].to_f
		FxXoom.create!(:rate => rate)
	end

end