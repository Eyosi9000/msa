require 'rails_helper'

RSpec.describe "acadamic_years/new", type: :view do
  before(:each) do
    assign(:acadamic_year, AcadamicYear.new(
      year: "MyString",
      description: "MyText"
    ))
  end

  it "renders new acadamic_year form" do
    render

    assert_select "form[action=?][method=?]", acadamic_years_path, "post" do

      assert_select "input[name=?]", "acadamic_year[year]"

      assert_select "textarea[name=?]", "acadamic_year[description]"
    end
  end
end
