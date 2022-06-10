require 'rails_helper'

RSpec.describe "acadamic_years/edit", type: :view do
  before(:each) do
    @acadamic_year = assign(:acadamic_year, AcadamicYear.create!(
      year: "MyString",
      description: "MyText"
    ))
  end

  it "renders the edit acadamic_year form" do
    render

    assert_select "form[action=?][method=?]", acadamic_year_path(@acadamic_year), "post" do

      assert_select "input[name=?]", "acadamic_year[year]"

      assert_select "textarea[name=?]", "acadamic_year[description]"
    end
  end
end
