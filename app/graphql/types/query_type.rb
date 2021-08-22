module Types
  class QueryType < Types::BaseObject
    # teams
    field :teams, [Types::TeamType], null: false

    def teams
      Team.all
    end

    field :team, Types::TeamType, null: false do
      argument :id, ID, required: true
    end

    def team(id:)
      Team.find(id)
    end

    # heros
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
