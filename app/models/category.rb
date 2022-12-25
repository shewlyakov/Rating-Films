class Category < ApplicationRecord
  has_many :films

  paginates_per 10

  has_one_attached :image
end
