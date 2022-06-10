require 'rails_helper'

RSpec.describe "programs/index", type: :view do
  before(:each) do
    assign(:programs, [
      Program.create!(
        code: "Code",
        name: "Name"
      ),
      Program.create!(
        code: "Code",
        name: "Name"
      )
    ])
  end

  it "renders a list of programs" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
