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

	def create
		@review = Review.new(review_params)
		if @review.save
			p @review.id
			redirect_to "/dishes/#{@review.id}"
		end
	end

	def edit
	end

	private

	def review_params
		params.require(:review).permit(:restaurant_name)
	end
end
