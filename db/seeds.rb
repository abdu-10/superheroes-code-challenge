puts "Seeding"
10.times do
    Hero.create(
        name: Faker::Games::Heroes.name,
        super_name: Faker::Games::Heroes.specialty
    )
end
10.times do
    Power.create(
        name: Faker::Superhero.power,
        description: Faker::Quote.matz
    )
end
10.times do
    HeroPower.create(
        strength: rand(10..30),
        hero_id: rand(1..10),
        power_id: rand(1..10)
       
    )
end
puts "Done!"