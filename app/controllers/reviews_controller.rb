class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @list = List.find(params[:list_id])
    @review = Review.create(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list), notice: "Review added successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

end
