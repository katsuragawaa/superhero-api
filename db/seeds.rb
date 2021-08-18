10.times do
	Hero.create({
		name: Faker::Superhero.name,
		power: Faker::Superhero.power,
		race: Faker::Demographic.race
	})
end
