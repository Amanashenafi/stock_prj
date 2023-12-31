require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    assign(:stock, Stock.create!(
      product: nil,
      unit: nil,
      store: nil,
      quantity: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2.5/)
  end
end
