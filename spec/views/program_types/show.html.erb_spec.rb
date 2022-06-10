require 'rails_helper'

RSpec.describe "program_types/show", type: :view do
  before(:each) do
    @program_type = assign(:program_type, ProgramType.create!(
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
