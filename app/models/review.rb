class Review < ApplicationRecord
  belongs_to :film
  belongs_to :user

  validates :ratings, :user_id, :film_id, presence: true 
end
