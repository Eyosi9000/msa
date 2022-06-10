require 'rails_helper'

RSpec.describe "acadamic_programs/index", type: :view do
  before(:each) do
    assign(:acadamic_programs, [
      AcadamicProgram.create!(
        program: nil,
        program_level: nil,
        program_type: nil,
        duration: 2
      ),
      AcadamicProgram.create!(
        program: nil,
        program_level: nil,
        program_type: nil,
        duration: 2
      )
    ])
  end

  it "renders a list of acadamic_programs" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
