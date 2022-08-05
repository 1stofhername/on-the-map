require 'faker'

puts "🌱 Seeding spices..."

50.times do
    Mapper.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        headline: Faker::Lorem.sentence,
        category: ["jet-setter", "vanlifer", "traveler"][rand(0..2)]
    )
end

puts "✅ Done seeding!"
