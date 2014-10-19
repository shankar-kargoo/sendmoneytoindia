class ForexsController < ApplicationController

	def index
		@wu = FxWu.last.rate.to_f
		@rti = FxRti.last.rate
		@google = FxGoogle.last.rate
		@xoom = FxXoom.last.rate
		@icici = FxIcici.last.rate
		@hdfc = FxHdfc.last.rate
		@sbi = FxSbi.last.rate
		@bloomberg = FxBloomberg.last.rate

		@wu_time = FxWu.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@rti_time = FxRti.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@google_time = FxGoogle.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@xoom_time = FxXoom.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@icici_time = FxIcici.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@hdfc_time = FxHdfc.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@sbi_time = FxSbi.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')
		@bloomberg_time = FxBloomberg.last.created_at.to_formatted_s(:long).in_time_zone('America/Los_Angeles')

		@user = User.new
	
	end
end