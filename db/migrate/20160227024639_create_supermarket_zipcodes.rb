class CreateSupermarketZipcodes < ActiveRecord::Migration
  def change
    create_table :supermarket_zipcodes do |t|
      t.references :supermarket, index: true
      t.references :zipcode, index: true

      t.timestamps null: false
    end
    add_foreign_key :supermarket_zipcodes, :supermarkets
    add_foreign_key :supermarket_zipcodes, :zipcodes
  end
end
