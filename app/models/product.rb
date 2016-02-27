class Product < ActiveRecord::Base
  belongs_to :supermarket

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: { greater_than: 0.0 }
  validates :supermarket, presence: true
end
