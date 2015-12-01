json.array!(@orders) do |order|
  json.extract! order, :id, :country, :name, :address, :city, :zip_postal_code, :phone_number, :email, :cart_id, :ip_address, :first_name, :last_name, :card_type, :card_expires_on
  json.url order_url(order, format: :json)
end
