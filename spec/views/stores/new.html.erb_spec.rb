require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, Store.new(
      code: "MyString",
      name: "MyString",
      address: "MyString"
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input[name=?]", "store[code]"

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[address]"
    end
  end
end
