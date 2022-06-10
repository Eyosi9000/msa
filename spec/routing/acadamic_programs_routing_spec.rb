require "rails_helper"

RSpec.describe AcadamicProgramsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/acadamic_programs").to route_to("acadamic_programs#index")
    end

    it "routes to #new" do
      expect(get: "/acadamic_programs/new").to route_to("acadamic_programs#new")
    end

    it "routes to #show" do
      expect(get: "/acadamic_programs/1").to route_to("acadamic_programs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/acadamic_programs/1/edit").to route_to("acadamic_programs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/acadamic_programs").to route_to("acadamic_programs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/acadamic_programs/1").to route_to("acadamic_programs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/acadamic_programs/1").to route_to("acadamic_programs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/acadamic_programs/1").to route_to("acadamic_programs#destroy", id: "1")
    end
  end
end
