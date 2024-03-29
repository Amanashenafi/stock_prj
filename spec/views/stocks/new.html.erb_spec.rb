require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      product: nil,
      unit: nil,
      store: nil,
      quantity: 1.5
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input[name=?]", "stock[product_id]"

      assert_select "input[name=?]", "stock[unit_id]"

      assert_select "input[name=?]", "stock[store_id]"

      assert_select "input[name=?]", "stock[quantity]"
    end
  end
end
