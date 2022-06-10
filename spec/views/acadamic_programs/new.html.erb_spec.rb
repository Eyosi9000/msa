require 'rails_helper'

RSpec.describe "acadamic_programs/new", type: :view do
  before(:each) do
    assign(:acadamic_program, AcadamicProgram.new(
      program: nil,
      program_level: nil,
      program_type: nil,
      duration: 1
    ))
  end

  it "renders new acadamic_program form" do
    render

    assert_select "form[action=?][method=?]", acadamic_programs_path, "post" do

      assert_select "input[name=?]", "acadamic_program[program_id]"

      assert_select "input[name=?]", "acadamic_program[program_level_id]"

      assert_select "input[name=?]", "acadamic_program[program_type_id]"

      assert_select "input[name=?]", "acadamic_program[duration]"
    end
  end
end
