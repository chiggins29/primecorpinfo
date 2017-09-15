class ReviewsController < ApplicationController

	before_action :set_reviews, only: [:show, :edit, :update, :destroy, :toggle_status]
	access user: [:new, :create, :index],  admin: :all

	def index
		if logged_in?(:admin)
			@reviews = Review.all
		else
			@reviews = Review.published.all
		end
	end

	def new
		@review = Review.new
	end

	def show
		if logged_in?(:admin) || @review.published?
			@review = Review.find(params[:id])
		else
			redirect_to reviews_path, notice: "You are not authorized to view this page."
		end
	end

	def create
		@review = Review.new(review_params)

		respond_to do |format|
			if @review.save
				format.html { redirect_to reviews_path, notice: "Your review has been submitted and will post to the main page within 48 hours!"}
			else
				format.html { redirect_to new_review_path, notice: "Your review failed to submit, please try again!"}
			end
		end
	end

	def destroy
		@review.destroy
			respond_to do |format|
				format.html { redirect_to reviews_path, notice: "Review successfully deleted!" }
			end
	end

	def toggle_status
		if @review.draft?
			@review.published!
		else @review.published?
			@review.draft!
		end
		redirect_to reviews_url, notice: "Review status was updated successfully"
	end

	private

	def set_reviews
		@review = Review.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:full_name, :service_purchased, :body, :rating)
	end
end
