class PromoActivation < ApplicationRecord
  belongs_to :promo
  has_one :promo_type, through: :promo
end
