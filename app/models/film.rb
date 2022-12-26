class Film < ApplicationRecord
  has_many :reviews

  belongs_to :category

  paginates_per 10

  has_one_attached :image
  has_one_attached :trailer
  has_one_attached :thumbnail
end
