class CampgroundSerializer < ActiveModel::Serializer
	belongs_to :park
	has_many :reviews
	has_many :users
	has_many :users, through: :reviews

  attributes :id,
    :park_id,
	:directions_overview,
    :name,
    :description,
    :cell_phone_reception,
    :showers
end
