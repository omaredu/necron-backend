# frozen_string_literal: true

module Types
  class PromoType < Types::BaseObject
    field :id, ID, null: false

    field :product, Types::ProductType, null: false
    field :product_id, Integer, null: false
    field :description, String
    field :type, String, null: false
    field :activation, Types::PromoActivationType, null: true
    field :reward, Types::PromoRewardType, null: true

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

  def type
    object.promo_type.to_s
  end
end
