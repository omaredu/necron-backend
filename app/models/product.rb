class Product < ApplicationRecord
  has_many :promos, dependent: :destroy
  has_many :promo_rewards, dependent: :destroy, foreign_key: 'reward_id'

  validates :name, presence: true
  validates :sku, presence: true, uniqueness: true
  validates :factory_price, presence: true, numericality: { greater_than: 0 }
end
