class Park < ApplicationRecord
has_many :photos
has_many :campgrounds
end
