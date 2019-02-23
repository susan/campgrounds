class ParkSerializer < ActiveModel::Serializer
	has_many :campgrounds
	has_many :photos
  attributes :id,
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
end
