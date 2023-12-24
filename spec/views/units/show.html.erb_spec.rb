require 'rails_helper'

RSpec.describe "units/show", type: :view do
  before(:each) do
    assign(:unit, Unit.create!(
      code: "Code",
      name: "Name",
      unit_type: "Unit Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Unit Type/)
  end
end
