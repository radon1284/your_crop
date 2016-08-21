require 'rails_helper'

RSpec.describe "stores/index", type: :view do
  before(:each) do
    assign(:stores, [
      Store.create!(
        :user => nil,
        :store_name => "Store Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :region => "Region",
        :city_town => "City Town",
        :brgy => "Brgy",
        :zipcode => "Zipcode",
        :mobile_phone => "Mobile Phone",
        :telephone => "Telephone"
      ),
      Store.create!(
        :user => nil,
        :store_name => "Store Name",
        :address1 => "Address1",
        :address2 => "Address2",
        :region => "Region",
        :city_town => "City Town",
        :brgy => "Brgy",
        :zipcode => "Zipcode",
        :mobile_phone => "Mobile Phone",
        :telephone => "Telephone"
      )
    ])
  end

  it "renders a list of stores" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Store Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => "City Town".to_s, :count => 2
    assert_select "tr>td", :text => "Brgy".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
  end
end
