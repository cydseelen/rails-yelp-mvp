class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    # @review = Review.new(review_params)
    # @review.save
    # redirect_to restaurant_path(@restaurant)
  end
end
