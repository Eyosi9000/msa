require 'rails_helper'

RSpec.describe "acadamic_years/show", type: :view do
  before(:each) do
    @acadamic_year = assign(:acadamic_year, AcadamicYear.create!(
      year: "Year",
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Year/)
    expect(rendered).to match(/MyText/)
  end
end
