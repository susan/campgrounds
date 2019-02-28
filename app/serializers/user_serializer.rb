
class UserSerializer < ActiveModel::Serializer
	has_many :campgrounds
	has_many :reviews
	has_many :campgrounds, through: :reviews
  attributes :id, :user_name, :email, :password
  #put password in here so user can change it via token
end
