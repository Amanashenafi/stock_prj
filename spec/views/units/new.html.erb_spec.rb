require 'rails_helper'

RSpec.describe "units/new", type: :view do
  before(:each) do
    assign(:unit, Unit.new(
      code: "MyString",
      name: "MyString",
      unit_type: "MyString"
    ))
  end

  it "renders new unit form" do
    render

    assert_select "form[action=?][method=?]", units_path, "post" do

      assert_select "input[name=?]", "unit[code]"

      assert_select "input[name=?]", "unit[name]"

      assert_select "input[name=?]", "unit[unit_type]"
    end
  end
end
