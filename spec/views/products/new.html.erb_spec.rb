require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :product_name => "MyString",
      :product_description => "MyText",
      :product_distributor_price => "9.99",
      :product_retail_price => "9.99",
      :product_sale_price => "9.99",
      :quantity => "MyString",
      :type => "",
      :category => nil,
      :store => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_product_name[name=?]", "product[product_name]"

      assert_select "textarea#product_product_description[name=?]", "product[product_description]"

      assert_select "input#product_product_distributor_price[name=?]", "product[product_distributor_price]"

      assert_select "input#product_product_retail_price[name=?]", "product[product_retail_price]"

      assert_select "input#product_product_sale_price[name=?]", "product[product_sale_price]"

      assert_select "input#product_quantity[name=?]", "product[quantity]"

      assert_select "input#product_type[name=?]", "product[type]"

      assert_select "input#product_category_id[name=?]", "product[category_id]"

      assert_select "input#product_store_id[name=?]", "product[store_id]"
    end
  end
end
