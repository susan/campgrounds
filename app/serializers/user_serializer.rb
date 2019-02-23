
class UserSerializer < ActiveModel::Serializer
	as_many :campgrounds
	has_many :reviews
	has_many :campgrounds, through: :reviews
  attributes :id, :user_name, :email
  #put password in here so user can change it via token
end
