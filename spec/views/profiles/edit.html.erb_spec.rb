require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :middle_name => "MyString",
      :mobile_phone => "MyString",
      :telephone => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input#profile_first_name[name=?]", "profile[first_name]"

      assert_select "input#profile_last_name[name=?]", "profile[last_name]"

      assert_select "input#profile_middle_name[name=?]", "profile[middle_name]"

      assert_select "input#profile_mobile_phone[name=?]", "profile[mobile_phone]"

      assert_select "input#profile_telephone[name=?]", "profile[telephone]"
    end
  end
end
