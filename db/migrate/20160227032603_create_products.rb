class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.text :description
      t.references :supermarket, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :supermarkets
  end
end
