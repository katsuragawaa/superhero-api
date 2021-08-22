module Types
  class HeroType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :power, String, null: true
    field :race, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
