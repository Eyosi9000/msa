require 'rails_helper'

RSpec.describe "program_levels/new", type: :view do
  before(:each) do
    assign(:program_level, ProgramLevel.new(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders new program_level form" do
    render

    assert_select "form[action=?][method=?]", program_levels_path, "post" do

      assert_select "input[name=?]", "program_level[code]"

      assert_select "input[name=?]", "program_level[name]"
    end
  end
end
