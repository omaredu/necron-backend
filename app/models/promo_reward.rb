class PromoReward < ApplicationRecord
  belongs_to :promo
  belongs_to :reward, class_name: 'Product', foreign_key: 'reward_id'

  def product
    reward
  end
end
