class ReviewsController < ApplicationController
	#show info for one review of a dish
	def show
		@review = Review.find(params[:id]) #find review with that id and save as instance of the review
		@dish = Dish.find(@review.dish_id) #find dish that matches dish_id and save as instance of the dish
		render :show
	end

	#provide form to create a new review for a dish
	def new
		@review = Review.new
		@dishes = Dish.all
		render :new
	end

	#creates a review for a dish
	def create
		@review = current_user.reviews.new(review_params)
		dish = @review.dish_id
		if @review.save
			redirect_to dish_path(dish) #redirects to dishes#show
		else
			render :new
		end
	end

	#provide form to edit an existing review of a dish
	def edit
		@review = Review.find(params[:id])
		@dish = Dish.find(@review.dish_id)
		if (@current_user == @review.user)
			render :edit
		else
			redirect_to dish_path(@dish)
		end
	end

	#updates a review for a dish
	def update
		@review = Review.find(params[:id])
		@review.update_attributes(review_params)
		dish = @review.dish_id
		redirect_to dish_path(dish) #redirects to dishes#show
	end

	#deletes an existing review for a dish
	def destroy
		@review = Review.find(params[:id])
		@review.destroy
		dish = @review.dish_id
		redirect_to dish_path(dish) #redirects to dishes#show
	end

	private

	def review_params
		params.require(:review).permit(:restaurant_name, :dish_rating, :dish_review, :dish_image, :dish_id, :user_id)
	end
end
