# frozen_string_literal: true

module Types
  class PromoRewardType < Types::BaseObject
    field :id, ID, null: false

    field :reward_id, Integer, description: "ID of the reward. It is the id of the product that will be rewarded. It might be nil if the reward is a discount."
    field :promo_id, Integer, null: false
    field :value, Integer
    field :quantity, Integer
    field :product, Types::ProductType, description: "Product that will be rewarded. It might be nil if the reward is a discount."

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
