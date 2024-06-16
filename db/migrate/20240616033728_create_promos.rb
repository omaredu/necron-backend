class CreatePromos < ActiveRecord::Migration[7.1]
  def change
    create_table :promos do |t|
      t.references :product, null: false, foreign_key: true
      t.string :description, null: true
      t.integer :promo_type, default: 0

      t.timestamps
    end
  end
end
