class Review < ActiveRecord::Base

belongs_to :restaurant
belongs_to :user
ratyrate_rateable "rating"
end
