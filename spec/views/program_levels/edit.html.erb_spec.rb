require 'rails_helper'

RSpec.describe "program_levels/edit", type: :view do
  before(:each) do
    @program_level = assign(:program_level, ProgramLevel.create!(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders the edit program_level form" do
    render

    assert_select "form[action=?][method=?]", program_level_path(@program_level), "post" do

      assert_select "input[name=?]", "program_level[code]"

      assert_select "input[name=?]", "program_level[name]"
    end
  end
end
