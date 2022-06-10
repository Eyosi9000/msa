require 'rails_helper'

RSpec.describe "program_types/edit", type: :view do
  before(:each) do
    @program_type = assign(:program_type, ProgramType.create!(
      code: "MyString",
      name: "MyString"
    ))
  end

  it "renders the edit program_type form" do
    render

    assert_select "form[action=?][method=?]", program_type_path(@program_type), "post" do

      assert_select "input[name=?]", "program_type[code]"

      assert_select "input[name=?]", "program_type[name]"
    end
  end
end
