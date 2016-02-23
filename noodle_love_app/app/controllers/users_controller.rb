class UsersController < ApplicationController

	def index
		@users = User.all
	end

	#provide form to create a new user
	def new
		@user = User.new
		render :new
	end

	#create a new user
	def create
		user_params = params.require(:user).permit(:first_name, :email, :password)
		@user = User.create(user_params)
		redirect_to "/"
	end
end
