class Supermarket < ActiveRecord::Base
	has_many :supermarket_zipcodes
	has_many :zipcodes, through: :supermarket_zipcodes

	validates :name, presence: true

	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
end