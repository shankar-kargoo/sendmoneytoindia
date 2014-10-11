class UsersController < ApplicationController

	def new
		@user = User.new
	end

  def create
     @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up, we will send you updates every second friday."
      redirect_to  :back 

    else
      flash[:error] = " Sorry something went wrong, please try again!"
      redirect_to  :back
    end
  end


  private

  def user_params
    params.require(:user).permit(:email)
  end

end

