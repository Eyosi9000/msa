require 'rails_helper'

RSpec.describe "program_types/index", type: :view do
  before(:each) do
    assign(:program_types, [
      ProgramType.create!(
        code: "Code",
        name: "Name"
      ),
      ProgramType.create!(
        code: "Code",
        name: "Name"
      )
    ])
  end

  it "renders a list of program_types" do
    render
    assert_select "tr>td", text: "Code".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
  end
end
