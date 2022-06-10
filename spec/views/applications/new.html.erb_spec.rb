require 'rails_helper'

RSpec.describe "applications/new", type: :view do
  before(:each) do
    assign(:application, Application.new(
      status: "MyString",
      payment_made: false,
      applicant: nil,
      acadamic_announcement: nil
    ))
  end

  it "renders new application form" do
    render

    assert_select "form[action=?][method=?]", applications_path, "post" do

      assert_select "input[name=?]", "application[status]"

      assert_select "input[name=?]", "application[payment_made]"

      assert_select "input[name=?]", "application[applicant_id]"

      assert_select "input[name=?]", "application[acadamic_announcement_id]"
    end
  end
end
