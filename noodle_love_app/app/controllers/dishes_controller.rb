class DishesController < ApplicationController
	#index of all dishes in db
	def index
		@dishes = Dish.all #get all dishes from db and save to instance of dishes
		render :index
	end

	#show info for one dish
	def show
		@dish = Dish.find(params[:id]) #find dish with that id and save as instance of the dish
		render :show
	end
end