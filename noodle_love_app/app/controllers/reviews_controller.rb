class ReviewsController < ApplicationController
	#index of all reviews in db
	def index
		@reviews = Review.all #get all reviews from db and save to instance of reviews
		render :index
	end
end
