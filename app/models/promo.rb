class Promo < ApplicationRecord
  belongs_to :product
  has_one :promo_activation, dependent: :destroy
  has_one :promo_reward, dependent: :destroy

  enum promo_type: %i[money percentage bonus]

  def type
    promo_type
  end

  def activation
    promo_activation
  end

  def reward
    promo_reward
  end
end
