require 'rails_helper'

RSpec.describe "program_levels/index", type: :view do
  before(:each) do
    assign(:program_levels, [
      ProgramLevel.create!(
        code: "Code",
        name: "Name"
      ),
      ProgramLevel.create!(
        code: "Code",
        name: "Name"
      )
    ])
  end

  it "renders a list of program_levels" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
