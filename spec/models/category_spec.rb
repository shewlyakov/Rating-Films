require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Associations" do
    it { should have_many(:films) }

    it { should have_one_attached(:image) }
  end

  describe "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:image) }
  end
end
