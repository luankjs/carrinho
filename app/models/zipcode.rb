class Zipcode < ActiveRecord::Base
	has_many :supermarket_zipcodes
	has_many :supermarkets, through: :supermarket_zipcodes
	
	validates :number, presence: true, uniqueness: true, format: { with: /\d{5}-\d{3}/ }
end
