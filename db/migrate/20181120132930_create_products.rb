class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.text :description
      t.string :brand
      t.integer :category_id
      t.string :image

      t.timestamps
    end
  end
end
