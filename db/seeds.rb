3.times do
  team = Team.create(name: Faker::Team.name)
  5.times do
    team.heros.create(
      name: Faker::Superhero.name,
      power: Faker::Superhero.power,
      race: Faker::Demographic.race,
    )
  end
end
