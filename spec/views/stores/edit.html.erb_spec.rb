require 'rails_helper'

RSpec.describe "stores/edit", type: :view do
  let(:store) {
    Store.create!(
      code: "MyString",
      name: "MyString",
      address: "MyString"
    )
  }

  before(:each) do
    assign(:store, store)
  end

  it "renders the edit store form" do
    render

    assert_select "form[action=?][method=?]", store_path(store), "post" do

      assert_select "input[name=?]", "store[code]"

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[address]"
    end
  end
end
