class Mutations::CreateHero < Mutations::BaseMutation
  argument :team_id, ID, required: true
  argument :name, String, required: true
  argument :power, String, required: true
  argument :race, String, required: true

  field :hero, Types::HeroType, null: false

  def resolve(team_id:, name:, power:, race:)
    team = Team.find(team_id)

    hero = team.heros.new(name: name, power: power, race: race)

    if hero.save
      { hero: hero, errors: [] }
    else
      { hero: nil, errors: hero.errors.full_messages }
    end
  end
end
