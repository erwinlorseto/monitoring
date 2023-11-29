require "rails_helper"

RSpec.describe VerifikatorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/verifikators").to route_to("verifikators#index")
    end

    it "routes to #new" do
      expect(get: "/verifikators/new").to route_to("verifikators#new")
    end

    it "routes to #show" do
      expect(get: "/verifikators/1").to route_to("verifikators#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/verifikators/1/edit").to route_to("verifikators#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/verifikators").to route_to("verifikators#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/verifikators/1").to route_to("verifikators#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/verifikators/1").to route_to("verifikators#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/verifikators/1").to route_to("verifikators#destroy", id: "1")
    end
  end
end
