require 'rails_helper'

RSpec.describe "program_levels/show", type: :view do
  before(:each) do
    @program_level = assign(:program_level, ProgramLevel.create!(
      code: "Code",
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
  end
end
