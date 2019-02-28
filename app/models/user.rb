class User < ApplicationRecord
	has_many :campgrounds
	has_many :reviews
	has_many :campgrounds, through: :reviews

   #before_save { self.email = email.downcnase }
	 validates :user_name, presence: true, uniqueness: true, length: { maximum: 50 }
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	 #validates :email, presence: true, length: { maximum: 255 },
	# format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  #validates :password, length: { minimum: 3 }, allow_nil: true


end
