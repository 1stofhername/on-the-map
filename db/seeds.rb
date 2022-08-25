require 'faker'

puts "🌱 Seeding spices..."

10.times do
    User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        headline: Faker::Lorem.sentence,
        category: ["jet-setter", "vanlifer", "traveler"][rand(0..2)],
        password: Faker::Internet::password,
        follower_id: rand(1..10)
    )
end

50.times do
    Post.create(
        location: Faker::Address.city,
        caption: Faker::Lorem.sentence,
        user_id: rand(1..10)
    )
end

30.times do
    Follower.create(
        user_id: rand(1..10),
        follower_id: rand(1..10)
    )
end

# 30.times do
#     Follower.create(
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         email: Faker::Internet.email
#         password: Faker::Internet::password
#     )
# end



puts "✅ Done seeding!"
