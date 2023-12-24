require 'rails_helper'

RSpec.describe "units/edit", type: :view do
  let(:unit) {
    Unit.create!(
      code: "MyString",
      name: "MyString",
      unit_type: "MyString"
    )
  }

  before(:each) do
    assign(:unit, unit)
  end

  it "renders the edit unit form" do
    render

    assert_select "form[action=?][method=?]", unit_path(unit), "post" do

      assert_select "input[name=?]", "unit[code]"

      assert_select "input[name=?]", "unit[name]"

      assert_select "input[name=?]", "unit[unit_type]"
    end
  end
end
