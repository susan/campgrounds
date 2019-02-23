class Api::V1::ReviewsController < ApplicationController

	def index
    @reviews = Review.all
    render json: @reviews, status: :ok
  end

  def show
    @review = Review.find(params[:id])
       render json: @review, status: :ok
   end

  def create
    @review = Review.create(review_params)
    if @review.save
   	  render json: @review, status: :created
    else
   	  render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @review = Review.find(params[:id])
      @review.update(review_params)
        if @review.save
          render json: @review, status: :accepted
        else
          render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
        end
  end

  def destroy
    @review = Review.find(params[:id])
    @reviews = Review.all
     @review.destroy
       if @review.destroy
         render json: @review, status: :deleted
       else
         render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
       end

  end

  private

  def review_params
  	params.require(:review).permit(:content, :rating, :campground_id, :user_id)
  end

end











