require 'pg'
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

10.times do
  Party.create(name: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, location: Faker::Compass.half_wind )
end

43.times do
  Friend.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
