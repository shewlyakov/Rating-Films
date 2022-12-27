require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Associations" do
    it { should have_many(:reviews) }
  end

  describe "Validations" do
    it { should validate_length_of(:name).is_at_least(3) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:encrypted_password) }
  end
end
