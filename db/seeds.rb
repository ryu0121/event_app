# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
start_at = rand(1..30).days.from_now
end_at = start_at + rand(1..30).hours
20.times do |n|
  Event.create!(name: "event#{n}", place: "place#{n}", owner_id: 1, content: "content", start_at: start_at, end_at: end_at)
end