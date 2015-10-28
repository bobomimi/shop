class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :contact_name
      t.string :country
      t.text :street_address
      t.string :city
      t.string :zip_postal_code
      t.string :mobile

      t.timestamps null: false
    end
  end
end
