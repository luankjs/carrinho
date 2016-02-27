class SupermarketZipcode < ActiveRecord::Base
  belongs_to :supermarket
  belongs_to :zipcode

  validates :supermarket, presence: true
  validates :zipcode, presence: true
end
