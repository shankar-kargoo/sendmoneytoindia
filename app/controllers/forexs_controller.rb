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

		@wu_time = FxWu.last.created_at.to_formatted_s(:long)
		@rti_time = FxRti.last.created_at.to_formatted_s(:long)
		@google_time = FxGoogle.last.created_at.to_formatted_s(:long)
		@xoom_time = FxXoom.last.created_at.to_formatted_s(:long)
		@icici_time = FxIcici.last.created_at.to_formatted_s(:long)
		@hdfc_time = FxHdfc.last.created_at.to_formatted_s(:long)
		@sbi_time = FxSbi.last.created_at.to_formatted_s(:long)
		@bloomberg_time = FxBloomberg.last.created_at.to_formatted_s(:long)

		@user = User.new
	
	end
end