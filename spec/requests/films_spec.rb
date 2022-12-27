require 'rails_helper'

RSpec.describe "/films", type: :request do
  Category.create(title: 'Drama', image_url: 'category_drama.jpg')

  let(:valid_attributes) { {title: 'title', description: 'description', director: 'director', category_id: 1, image_url: "shawshank_redemption_image.jpg", thumbnail_url: "shawshank_redemption_thumbnail.jpg", trailer_url: "shawshank_redemption_trailer.mp4"} }

  describe "GET /index" do
    it "renders a successful response" do
      Film.create! valid_attributes
      get films_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      film = Film.create! valid_attributes
      get film_url(film)
      expect(response).to be_successful
    end
  end
end
