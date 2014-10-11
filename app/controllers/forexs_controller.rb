class ForexsController < ApplicationController

	def index
		@wu = FxWu.last.rate.to_f
		@rti = FxRti.last.rate
		@google = FxGoogle.last.rate
		@xoom = FxXoom.last.rate

		@wu_time = FxWu.last.created_at.to_date
		@rti_time = FxRti.last.created_at.to_date
		@google_time = FxGoogle.last.created_at.to_date
		@xoom_time = FxXoom.last.created_at.to_date

		@user = User.new
	
	end
end