require 'rails_helper'

RSpec.describe Film, type: :model do
  describe "Associations" do
    it { should have_many(:reviews) }

    it { should belong_to(:category) }

    it { should have_one_attached(:image) }
    it { should have_one_attached(:trailer) }
    it { should have_one_attached(:thumbnail) }
  end

  describe "Validations" do
    it { should validate_length_of(:title).is_at_least(3) }

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:director) }
    it { should validate_presence_of(:category_id) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:trailer) }
    it { should validate_presence_of(:thumbnail) }
  end
end
