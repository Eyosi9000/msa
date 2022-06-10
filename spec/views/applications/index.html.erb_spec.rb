require 'rails_helper'

RSpec.describe "applications/index", type: :view do
  before(:each) do
    assign(:applications, [
      Application.create!(
        status: "Status",
        payment_made: false,
        applicant: nil,
        acadamic_announcement: nil
      ),
      Application.create!(
        status: "Status",
        payment_made: false,
        applicant: nil,
        acadamic_announcement: nil
      )
    ])
  end

  it "renders a list of applications" do
    render
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
