class SupermarketZipcode < ActiveRecord::Base
  belongs_to :supermarket
  belongs_to :zipcode
end
