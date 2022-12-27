require 'rails_helper'

RSpec.describe Review, type: :model do
  describe "Associations" do
    it { should belong_to(:film) }
    it { should belong_to(:user) }
  end

  describe "Validations" do
    it { should validate_presence_of(:ratings) }
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:film_id) }
  end
end
