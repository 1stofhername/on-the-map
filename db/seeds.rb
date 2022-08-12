require 'faker'

puts "🌱 Seeding spices..."

10.times do
    Creator.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        headline: Faker::Lorem.sentence,
        category: ["jet-setter", "vanlifer", "traveler"][rand(0..2)]
        password: Faker::Internet::password
    )
end

50.times do
    Post.create(
        title: Faker::Lorem.sentence,
        details: Faker::Lorem.sentence,
        creator_id: rand(1..10)
    )
end

30.times do
    CreatorFollower.create(
        mapper_id: rand(1..10),
        tracker_id: rand(1..30)
    )
end

30.times do
    Follower.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email
        password: Faker::Internet::password
    )
end



puts "✅ Done seeding!"
