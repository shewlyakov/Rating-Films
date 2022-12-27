class Film < ApplicationRecord
  has_many :reviews

  belongs_to :category

  has_one_attached :image
  has_one_attached :trailer
  has_one_attached :thumbnail

  validates_length_of :title, minimum: 3
  validates_presence_of :title, :description, :director, :category_id, :image, :trailer, :thumbnail

  paginates_per 5


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
