module Types
  class MutationType < Types::BaseObject
    field :create_hero, mutation: Mutations::CreateHero
  end
end
