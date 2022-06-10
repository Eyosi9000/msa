require 'rails_helper'

RSpec.describe "acadamic_years/index", type: :view do
  before(:each) do
    assign(:acadamic_years, [
      AcadamicYear.create!(
        year: "Year",
        description: "MyText"
      ),
      AcadamicYear.create!(
        year: "Year",
        description: "MyText"
      )
    ])
  end

  it "renders a list of acadamic_years" do
    render
    assert_select "tr>td", text: "Year".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
