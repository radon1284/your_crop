class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.text :product_description
      t.decimal :product_distributor_price
      t.decimal :product_retail_price
      t.decimal :product_sale_price
      t.string :quantity
      t.string :type
      t.references :category, index: true
      t.references :store, index: true

      t.timestamps
    end
  end
end
