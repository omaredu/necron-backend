class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :sku
      t.text :description, null: true
      t.string :name
      t.integer :factory_price, default: 0 # this price is in cents

      t.timestamps
    end
  end
end
