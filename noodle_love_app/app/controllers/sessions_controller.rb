class SessionsController < ApplicationController
	#provide form to create a new session (sign-in)
	def new
		@user = User.new
		render :new
	end

	#create new session (sign in user)
	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			redirect_to "/"
		else
			redirect_to "/sign-in"
		end
	end
end
