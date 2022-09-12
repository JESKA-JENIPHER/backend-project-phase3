puts "seeding starts!"

100.times do
    seeded_players = Player.create(
        name: Faker::Name.name,
        age: rand(18..40),
        race: Faker::JapaneseMedia::DragonBall.race,
        nationality:Faker::Nation.nationality,
        team_id: rand(1..13)
    )
end
10.times do
    seeded_agents = Agent.create(
        name: Faker::Name.name,
        id_number:rand(356472..538421),
        private_contact:rand(0722456302..0756449123),
        public_contact: rand(0722456302..0756449123) ,
        team_id:rand(1..13)
    )
end

20.times do
    seeded_agent_profiles = Agent_profile.create(
        age: rand(18..40),
        years_of_experience: rand(5..10),
        # rememeber to find faker 
        bio: Faker::Name.name,
        agent_id:rand(1..10) 
    )
end



13.times do
    seeded_teams = Team.create(
        name: Faker::Sports::Football.team,
        year_founded: rand(1980..2022),
        agent_id:rand(1..10),
        status: rand(0..1)
    )
end



32.times do
    seeded_contracts = Contract.create(
        contract_duration: rand(1..4),
        worth: rand(50000..100000),
        agent_id: rand(1..10),
        player_id: rand(1..100)
    )
end


puts "seeding ends!"