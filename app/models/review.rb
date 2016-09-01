class Review < ActiveRecord::Base
	belongs_to :user
	validates :movie_id, uniqueness: { scope: :user_id, message: "You've reviewed this movie!"}
	belongs_to :movie
end
