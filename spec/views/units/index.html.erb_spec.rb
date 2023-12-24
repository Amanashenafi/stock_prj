require 'rails_helper'

RSpec.describe "units/index", type: :view do
  before(:each) do
    assign(:units, [
      Unit.create!(
        code: "Code",
        name: "Name",
        unit_type: "Unit Type"
      ),
      Unit.create!(
        code: "Code",
        name: "Name",
        unit_type: "Unit Type"
      )
    ])
  end

  it "renders a list of units" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Code".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Unit Type".to_s), count: 2
  end
end
