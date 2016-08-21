FactoryGirl.define do
  factory :product do
    product_name "MyString"
    product_description "MyText"
    product_distributor_price "9.99"
    product_retail_price "9.99"
    product_sale_price "9.99"
    quantity "MyString"
    type ""
    category nil
    store nil
  end
end
