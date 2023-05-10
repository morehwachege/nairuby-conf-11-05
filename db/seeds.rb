# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "🌱 Start seeding!"
# Generate 100 random users using Faker
100.times do
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    email = Faker::Internet.email(name: "#{first_name} #{last_name}")
    age = Faker::Number.between(from: 18, to: 65)
  
    User.create(first_name: first_name, last_name: last_name, email: email, age: age)
  end

puts "Done seeding ;)"