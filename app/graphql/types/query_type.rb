module Types
  class QueryType < Types::BaseObject
    field :heros, [Types::HeroType], null: false

    def heros
      Hero.all
    end

    field :hero, Types::HeroType, null: false do
      argument :id, ID, required: true
    end

    def hero(id:)
      Hero.find(id)
    end
  end
end
