require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :product_name => "Product Name",
      :product_description => "MyText",
      :product_distributor_price => "9.99",
      :product_retail_price => "9.99",
      :product_sale_price => "9.99",
      :quantity => "Quantity",
      :type => "Type",
      :category => nil,
      :store => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Quantity/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
