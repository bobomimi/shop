class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :country
      t.string :name
      t.string :address
      t.string :city
      t.string :zip_postal_code
      t.string :phone_number
      t.string :email
      t.integer :cart_id
      t.string :ip_address
      t.string :first_name
      t.string :last_name
      t.string :card_type
      t.date :card_expires_on

      t.timestamps null: false
    end
  end
end
