class ReviewSerializer < ActiveModel::Serializer
	belongs_to :user
	belongs_to :campground

  attributes :id, :content, :rating, :campground_id, :user_id
end
