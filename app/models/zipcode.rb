class Zipcode < ActiveRecord::Base
	validates :number, presence: true, uniqueness: true, format: { with: /\d{5}-\d{3}/, message: "only allows letters" }
end
