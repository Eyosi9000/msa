require 'rails_helper'

RSpec.describe "acadamic_announcements/index", type: :view do
  before(:each) do
    assign(:acadamic_announcements, [
      AcadamicAnnouncement.create!(
        status: "Status",
        acadamic_program: nil,
        acadamic_year: nil
      ),
      AcadamicAnnouncement.create!(
        status: "Status",
        acadamic_program: nil,
        acadamic_year: nil
      )
    ])
  end

  it "renders a list of acadamic_announcements" do
    render
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
