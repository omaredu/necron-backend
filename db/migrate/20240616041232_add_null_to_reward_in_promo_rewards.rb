class AddNullToRewardInPromoRewards < ActiveRecord::Migration[7.1]
  def change
    change_column :promo_rewards, :reward_id, :bigint, null: true
  end
end
