class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.references :user, index: true
      t.string :store_name
      t.string :address1
      t.string :address2
      t.string :region
      t.string :city_town
      t.string :brgy
      t.string :zipcode
      t.string :mobile_phone
      t.string :telephone

      t.timestamps
    end
  end
end
