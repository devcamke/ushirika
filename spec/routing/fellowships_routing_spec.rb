require "rails_helper"

RSpec.describe FellowshipsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/fellowships").to route_to("fellowships#index")
    end

    it "routes to #new" do
      expect(get: "/fellowships/new").to route_to("fellowships#new")
    end

    it "routes to #show" do
      expect(get: "/fellowships/1").to route_to("fellowships#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/fellowships/1/edit").to route_to("fellowships#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/fellowships").to route_to("fellowships#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/fellowships/1").to route_to("fellowships#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/fellowships/1").to route_to("fellowships#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/fellowships/1").to route_to("fellowships#destroy", id: "1")
    end
  end
end
