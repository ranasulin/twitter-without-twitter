# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Create Users
15.times do
  user = User.create(
    name:     Faker::Name.name,
  )
end
users = User.all

10.times do
  follower, followee = users.sample(2)
  followee.followers << follower
end

puts "Seed finished"
puts "#{User.count} users created"
