class CreatePromoRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :promo_rewards do |t|
      t.references :reward, null: false, foreign_key: { to_table: :products }
      t.references :promo, null: false, foreign_key: true
      t.integer :value
      t.integer :quantity

      t.timestamps
    end
  end
end
