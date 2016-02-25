class SessionsController < ApplicationController
	#provide form to create a new session (sign-in)
	def new
		@user = User.new
		render :new
	end

	#create new session (sign in user)
	def create
		@user = User.confirm(user_params)
		if @user
			login(@user)
			# redirect_to "/"
			redirect_to :back #when using modal
		else
			# redirect_to "/sign-in"
			flash[:notice] = "Your email or password do not match. Try again."
			redirect_to :back
		end
	end

	def destroy
		logout
		redirect_to "/"
	end

	private

	def user_params
		params.require(:user).permit(:email, :password)
	end
end
