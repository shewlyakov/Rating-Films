require "rails_helper"

RSpec.describe FilmsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/films").to route_to("films#index")
    end

    it "routes to #new" do
      expect(get: "/films/new").to route_to("films#new")
    end

    it "routes to #show" do
      expect(get: "/films/1").to route_to("films#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/films/1/edit").to route_to("films#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/films").to route_to("films#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/films/1").to route_to("films#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/films/1").to route_to("films#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/films/1").to route_to("films#destroy", id: "1")
    end
  end
end
