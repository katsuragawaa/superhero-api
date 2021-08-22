module Types
  class MutationType < Types::BaseObject
    field :create_hero, mutation: Mutations::CreateHero
    field :create_team, mutation: Mutations::CreateTeam
  end
end
