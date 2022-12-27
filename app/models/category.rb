class Category < ApplicationRecord
  has_many :films

  has_one_attached :image

  validates_presence_of :title, :image

  paginates_per 10

  def image_url=(image_file)
    image.attach(io: File.open('public/images/' + image_file), filename: image_file)
  end
end
