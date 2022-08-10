require 'faker'

puts "🌱 Seeding spices..."

10.times do
    Mapper.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        headline: Faker::Lorem.sentence,
        category: ["jet-setter", "vanlifer", "traveler"][rand(0..2)]
    )
end

50.times do
    Post.create(
        title: Faker::Lorem.sentence,
        details: Faker::Lorem.sentence,
        mapper_id: rand(1..10)
    )
end

30.times do
    MapperTracker.create(
        mapper_id: rand(1..10),
        tracker_id: rand(1..30)
    )
end

30.times do
    Tracker.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
    )
end



puts "✅ Done seeding!"
