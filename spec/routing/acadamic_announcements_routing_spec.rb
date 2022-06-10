require "rails_helper"

RSpec.describe AcadamicAnnouncementsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/acadamic_announcements").to route_to("acadamic_announcements#index")
    end

    it "routes to #new" do
      expect(get: "/acadamic_announcements/new").to route_to("acadamic_announcements#new")
    end

    it "routes to #show" do
      expect(get: "/acadamic_announcements/1").to route_to("acadamic_announcements#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/acadamic_announcements/1/edit").to route_to("acadamic_announcements#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/acadamic_announcements").to route_to("acadamic_announcements#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/acadamic_announcements/1").to route_to("acadamic_announcements#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/acadamic_announcements/1").to route_to("acadamic_announcements#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/acadamic_announcements/1").to route_to("acadamic_announcements#destroy", id: "1")
    end
  end
end
