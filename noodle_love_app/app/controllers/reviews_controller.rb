class ReviewsController < ApplicationController
	#show info for one review of a dish
	def show
		@review = Review.find(params[:id]) #find review with that id and save as instance of the review
		render :show
	end

	#provide form to create a review for a dish
	def new
		@review = Review.new
		@dishes = Dish.all
		render :new
	end

	#creates a review for a dish
	def create
		@review = Review.new(review_params)
		dish = @review.dish_id
		if @review.save
			redirect_to dish_path(dish) #redirects to dishes#show
		else
			render :new
		end
	end

	#edit the review form of a dish
	def edit
		@review = Review.find(params[:id])
		@dishes = Dish.all
		render :edit
	end

	private

	def review_params
		params.require(:review).permit(:restaurant_name, :dish_rating, :dish_review, :dish_image, :dish_id)
	end
end
