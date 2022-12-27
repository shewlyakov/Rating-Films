class Review < ApplicationRecord
  belongs_to :film
  belongs_to :user

  validates_presence_of :ratings, :user_id, :film_id
end
