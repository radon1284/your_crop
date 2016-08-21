require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, Store.new(
      :user => nil,
      :store_name => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :region => "MyString",
      :city_town => "MyString",
      :brgy => "MyString",
      :zipcode => "MyString",
      :mobile_phone => "MyString",
      :telephone => "MyString"
    ))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input#store_user_id[name=?]", "store[user_id]"

      assert_select "input#store_store_name[name=?]", "store[store_name]"

      assert_select "input#store_address1[name=?]", "store[address1]"

      assert_select "input#store_address2[name=?]", "store[address2]"

      assert_select "input#store_region[name=?]", "store[region]"

      assert_select "input#store_city_town[name=?]", "store[city_town]"

      assert_select "input#store_brgy[name=?]", "store[brgy]"

      assert_select "input#store_zipcode[name=?]", "store[zipcode]"

      assert_select "input#store_mobile_phone[name=?]", "store[mobile_phone]"

      assert_select "input#store_telephone[name=?]", "store[telephone]"
    end
  end
end
