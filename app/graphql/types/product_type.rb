# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false

    field :sku, String
    field :description, String
    field :name, String
    field :factory_price, Integer
    field :promos, [Types::PromoType], null: true
    field :price, Integer, null: false

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # create function to add to the factory price the iVA value
    def price
      object.factory_price + (object.factory_price * 0.08) + (object.factory_price * 0.16)
    end
  end
end
