require 'rails_helper'

RSpec.describe "acadamic_programs/show", type: :view do
  before(:each) do
    @acadamic_program = assign(:acadamic_program, AcadamicProgram.create!(
      program: nil,
      program_level: nil,
      program_type: nil,
      duration: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
