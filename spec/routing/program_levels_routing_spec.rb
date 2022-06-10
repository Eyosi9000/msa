require "rails_helper"

RSpec.describe ProgramLevelsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/program_levels").to route_to("program_levels#index")
    end

    it "routes to #new" do
      expect(get: "/program_levels/new").to route_to("program_levels#new")
    end

    it "routes to #show" do
      expect(get: "/program_levels/1").to route_to("program_levels#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/program_levels/1/edit").to route_to("program_levels#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/program_levels").to route_to("program_levels#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/program_levels/1").to route_to("program_levels#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/program_levels/1").to route_to("program_levels#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/program_levels/1").to route_to("program_levels#destroy", id: "1")
    end
  end
end
