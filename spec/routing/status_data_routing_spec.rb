require "rails_helper"

RSpec.describe StatusDataController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/status_data").to route_to("status_data#index")
    end

    it "routes to #new" do
      expect(get: "/status_data/new").to route_to("status_data#new")
    end

    it "routes to #show" do
      expect(get: "/status_data/1").to route_to("status_data#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/status_data/1/edit").to route_to("status_data#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/status_data").to route_to("status_data#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/status_data/1").to route_to("status_data#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/status_data/1").to route_to("status_data#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/status_data/1").to route_to("status_data#destroy", id: "1")
    end
  end
end
