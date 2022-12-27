require "rails_helper"

RSpec.describe FilmsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/films").to route_to("films#index")
    end

    it "routes to #show" do
      expect(get: "/films/1").to route_to("films#show", id: "1")
    end
  end
end
