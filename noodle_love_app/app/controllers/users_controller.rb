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
		@user = User.create(user_params)
		login(@user)
		redirect_to root_path
	end

	#show info for one user
	def show
		@user = User.find(params[:id])
		@review = Review.find(params[:id]) #find review with that id and save as instance of the review
		render :show
	end

	private

	def user_params
		params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
	end
end
