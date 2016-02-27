class CreateSupermarkets < ActiveRecord::Migration
  def change
    create_table :supermarkets do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
