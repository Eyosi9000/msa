require 'rails_helper'

RSpec.describe "acadamic_announcements/edit", type: :view do
  before(:each) do
    @acadamic_announcement = assign(:acadamic_announcement, AcadamicAnnouncement.create!(
      status: "MyString",
      acadamic_program: nil,
      acadamic_year: nil
    ))
  end

  it "renders the edit acadamic_announcement form" do
    render

    assert_select "form[action=?][method=?]", acadamic_announcement_path(@acadamic_announcement), "post" do

      assert_select "input[name=?]", "acadamic_announcement[status]"

      assert_select "input[name=?]", "acadamic_announcement[acadamic_program_id]"

      assert_select "input[name=?]", "acadamic_announcement[acadamic_year_id]"
    end
  end
end
