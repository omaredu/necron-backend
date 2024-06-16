class RemoveRewardFromPromoRewards < ActiveRecord::Migration[7.1]
  def change
    remove_reference :promo_rewards, :reward, null: false, foreign_key: { to_table: :products }
  end
end
