# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

Artist.destroy_all
Song.destroy_all

10.times do
    Artist.create(name: Faker::Music::Hiphop.artist)
end

10.times do
    Song.create(title: Faker::Games::HalfLife.enemy,
    artist_id: Artist.ids.sample)
end

puts "seeds planted"