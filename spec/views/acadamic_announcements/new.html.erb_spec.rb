require 'rails_helper'

RSpec.describe "acadamic_announcements/new", type: :view do
  before(:each) do
    assign(:acadamic_announcement, AcadamicAnnouncement.new(
      status: "MyString",
      acadamic_program: nil,
      acadamic_year: nil
    ))
  end

  it "renders new acadamic_announcement form" do
    render

    assert_select "form[action=?][method=?]", acadamic_announcements_path, "post" do

      assert_select "input[name=?]", "acadamic_announcement[status]"

      assert_select "input[name=?]", "acadamic_announcement[acadamic_program_id]"

      assert_select "input[name=?]", "acadamic_announcement[acadamic_year_id]"
    end
  end
end
