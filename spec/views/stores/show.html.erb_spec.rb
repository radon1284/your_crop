require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    @store = assign(:store, Store.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Store Name/)
    expect(rendered).to match(/Address1/)
    expect(rendered).to match(/Address2/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/City Town/)
    expect(rendered).to match(/Brgy/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/Mobile Phone/)
    expect(rendered).to match(/Telephone/)
  end
end
