class Mutations::CreateHero < Mutations::BaseMutation
  argument :name, String, required: true
  argument :power, String, required: true
  argument :race, String, required: true

  field :hero, Types::HeroType, null: false

  def resolve(name:, power:, race:)
    hero = Hero.new(name: name, power: power, race: race)

    if hero.save
      { hero: hero, errors: [] }
    else
      { hero: nil, errors: hero.errors.full_messages }
    end
  end
end
