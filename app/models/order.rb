class Order < ActiveRecord::Base
    has_many :line_items, dependent: :destroy

	validates :contact_name, :country, :street_address, :city, :zip_postal_code, :mobile, presence: true

end
