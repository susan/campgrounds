class Api::V1::CampgroundsController < ApplicationController
	before_action :find_campground, only: [:show]

	def index
    @campgrounds = Campground.all
    render json: @campgrounds, status: :ok
  end

  def show
    find_campground
       render json: @campground, status: :ok
   end

private
def campground_params
  	params.require(:campground).permit(
			:park_id,
			:directions_overview,
      :name,
      :description,
      :cell_phone_reception,
      :showers
  		)
  end

  def find_campground
    @campground = Campground.find(params[:id])
  end

end





