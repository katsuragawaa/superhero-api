module Types
  class TeamType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :heros, [Types::HeroType], null: true
    field :heros_count, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def heros_count
      object.heros.count
    end
  end
end
