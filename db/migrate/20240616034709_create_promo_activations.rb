class CreatePromoActivations < ActiveRecord::Migration[7.1]
  def change
    create_table :promo_activations do |t|
      t.references :promo, null: false, foreign_key: true
      t.integer :min_quantity, default: 0
      t.integer :min_value, default: 0

      t.timestamps
    end
  end
end
