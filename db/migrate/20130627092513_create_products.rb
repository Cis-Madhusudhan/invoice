class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.integer :quantity
      t.float :unit_cost
      t.text :product_description
      t.string :tax_id
      t.integer :current_stock 

      t.timestamps
    end
  end
end