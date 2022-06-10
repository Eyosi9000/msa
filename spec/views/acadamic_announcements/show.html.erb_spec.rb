require 'rails_helper'

RSpec.describe "acadamic_announcements/show", type: :view do
  before(:each) do
    @acadamic_announcement = assign(:acadamic_announcement, AcadamicAnnouncement.create!(
      status: "Status",
      acadamic_program: nil,
      acadamic_year: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
