require "rails_helper"

RSpec.describe AcadamicYearsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/acadamic_years").to route_to("acadamic_years#index")
    end

    it "routes to #new" do
      expect(get: "/acadamic_years/new").to route_to("acadamic_years#new")
    end

    it "routes to #show" do
      expect(get: "/acadamic_years/1").to route_to("acadamic_years#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/acadamic_years/1/edit").to route_to("acadamic_years#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/acadamic_years").to route_to("acadamic_years#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/acadamic_years/1").to route_to("acadamic_years#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/acadamic_years/1").to route_to("acadamic_years#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/acadamic_years/1").to route_to("acadamic_years#destroy", id: "1")
    end
  end
end
