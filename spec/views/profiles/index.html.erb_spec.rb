require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :mobile_phone => "Mobile Phone",
        :telephone => "Telephone"
      ),
      Profile.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :middle_name => "Middle Name",
        :mobile_phone => "Mobile Phone",
        :telephone => "Telephone"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Middle Name".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Telephone".to_s, :count => 2
  end
end
