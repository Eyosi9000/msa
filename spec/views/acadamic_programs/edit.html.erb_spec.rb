require 'rails_helper'

RSpec.describe "acadamic_programs/edit", type: :view do
  before(:each) do
    @acadamic_program = assign(:acadamic_program, AcadamicProgram.create!(
      program: nil,
      program_level: nil,
      program_type: nil,
      duration: 1
    ))
  end

  it "renders the edit acadamic_program form" do
    render

    assert_select "form[action=?][method=?]", acadamic_program_path(@acadamic_program), "post" do

      assert_select "input[name=?]", "acadamic_program[program_id]"

      assert_select "input[name=?]", "acadamic_program[program_level_id]"

      assert_select "input[name=?]", "acadamic_program[program_type_id]"

      assert_select "input[name=?]", "acadamic_program[duration]"
    end
  end
end
