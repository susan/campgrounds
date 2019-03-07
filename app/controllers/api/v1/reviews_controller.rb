class Api::V1::ReviewsController < ApplicationController

before_action :current_useaaaa, only: [:create, :update, :destroy]

  def index
    @reviews = Review.all
    render json: @reviews, status: :ok
  end

  def show
    @review = Review.find(params[:id])
       render json: @review, status: :ok
   end

  def create
    #if there is a current user, then associate them with the review
    if current_useaaaa
      @review = Review.new(review_params)
      @review.user = current_useaaaa

      if @review.save
     	  render json: @review, status: :created
      else
     	  render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
      end
    end
  end

  def update
    @review = Review.find(params[:id])
      if @review.user_id === current_useaaaa
        @review.update(review_params)
          if @review.save
            render json: @review, status: :accepted
          else
            render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
        end
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @reviews = Review.all
     if @review.user === current_useaaaa
       (@review.destroy
        if @review.destroy
       render json: @review, status: :deleted
         else
           render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
         end)
     else
     render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

#take out user_id so would have to get it from front end
  def review_params
  	params.require(:review).permit(:content, :rating, :campground_id, :user_id)
  end

end











