require 'rails_helper'

RSpec.describe "Categories", type: :request do
  let(:valid_attributes) { {title: 'Drama', image_url: 'category_drama.jpg'} }

  describe "GET /index" do
    it "renders a successful response" do
      Category.create! valid_attributes
      get categories_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      category = Category.create! valid_attributes
      get categories_url(category)
      expect(response).to be_successful
    end
  end
end
