require 'rails_helper'

RSpec.describe "/reviews", type: :request do
  User.create(name: "name", email: "email@mail.com", password: "password", encrypted_password: "password")
  Category.create(title: 'Drama', image_url: 'category_drama.jpg')
  Film.create(title: 'title', description: 'description', director: 'director', category_id: '1', image_url: "shawshank_redemption_image.jpg", thumbnail_url: "shawshank_redemption_thumbnail.jpg", trailer_url: "shawshank_redemption_trailer.mp4")

  let(:valid_attributes) { {ratings: 10, user_id: 1, film_id: 1} }

  describe "GET /index" do
    it "renders a successful response" do
      Review.create! valid_attributes
      get reviews_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      review = Review.create! valid_attributes
      get review_url(review)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_review_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      review = Review.create! valid_attributes
      get edit_review_url(review)
      expect(response).to be_successful
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested review" do
      review = Review.create! valid_attributes
      expect {
        delete review_url(review)
      }.to change(Review, :count).by(-1)
    end

    it "redirects to the reviews list" do
      review = Review.create! valid_attributes
      delete review_url(review)
      expect(response).to redirect_to(reviews_url)
    end
  end
end
