class Film < ApplicationRecord
  has_many :reviews

  belongs_to :category

  paginates_per 10

  has_one_attached :image
  has_one_attached :trailer
  has_one_attached :thumbnail

  def image_url=(image_file)
    image.attach(io: File.open('public/images/' + image_file), filename: image_file)
  end

  def trailer_url=(trailer_file)
    trailer.attach(io: File.open('public/images/' + trailer_file), filename: trailer_file)
  end

  def thumbnail_url=(thumbnail_file)
    thumbnail.attach(io: File.open('public/images/' + thumbnail_file), filename: thumbnail_file)
  end
end
