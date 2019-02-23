class Api::V1::ParksController < ApplicationController

  before_action :find_park, only: [:show]

	def index
    @parks = Park.all
    render json: @parks, status: :ok
  end

  def show
    find_park
       render json: @park, status: :ok
   end

private
def park_params
  	params.require(:park).permit(
			:states,
			:lat_long,
		  :description,
		  :designation,
		  :park_code,
		  :directions_info,
		  :directions_url,
		  :full_name,
		  :url,
		  :weather_info,
		  :name,
		  :vehicle_fee,
		  :img1_url,
		  :is_editable
  		)
  end

  def find_park
    @park = Park.find(params[:id])
  end

end


