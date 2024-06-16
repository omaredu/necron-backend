class RemoveProductPromoRewardsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :product_promo_rewards
  end
end
