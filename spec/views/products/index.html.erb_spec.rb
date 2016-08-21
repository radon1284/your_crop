require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :product_name => "Product Name",
        :product_description => "MyText",
        :product_distributor_price => "9.99",
        :product_retail_price => "9.99",
        :product_sale_price => "9.99",
        :quantity => "Quantity",
        :type => "Type",
        :category => nil,
        :store => nil
      ),
      Product.create!(
        :product_name => "Product Name",
        :product_description => "MyText",
        :product_distributor_price => "9.99",
        :product_retail_price => "9.99",
        :product_sale_price => "9.99",
        :quantity => "Quantity",
        :type => "Type",
        :category => nil,
        :store => nil
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Product Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Quantity".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
