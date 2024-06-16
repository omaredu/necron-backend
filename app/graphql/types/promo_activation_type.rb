# frozen_string_literal: true

module Types
  class PromoActivationType < Types::BaseObject
    field :id, ID, null: false
    field :promo_id, Integer, null: false
    field :min_quantity, Integer
    field :min_value, Integer
    field :promo, Types::PromoType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
