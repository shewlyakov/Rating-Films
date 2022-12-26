class Category < ApplicationRecord
  has_many :films

  paginates_per 10

  has_one_attached :image

  def image_url=(image_file)
    image.attach(io: File.open('public/images/' + image_file), filename: image_file)
  end
end
