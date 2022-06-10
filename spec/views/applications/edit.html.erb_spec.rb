require 'rails_helper'

RSpec.describe "applications/edit", type: :view do
  before(:each) do
    @application = assign(:application, Application.create!(
      status: "MyString",
      payment_made: false,
      applicant: nil,
      acadamic_announcement: nil
    ))
  end

  it "renders the edit application form" do
    render

    assert_select "form[action=?][method=?]", application_path(@application), "post" do

      assert_select "input[name=?]", "application[status]"

      assert_select "input[name=?]", "application[payment_made]"

      assert_select "input[name=?]", "application[applicant_id]"

      assert_select "input[name=?]", "application[acadamic_announcement_id]"
    end
  end
end
