require 'rails_helper'

RSpec.describe "program_types/new", type: :view do
  before(:each) do
    assign(:program_type, ProgramType.new(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders new program_type form" do
    render

    assert_select "form[action=?][method=?]", program_types_path, "post" do

      assert_select "input[name=?]", "program_type[code]"

      assert_select "input[name=?]", "program_type[name]"
    end
  end
end
