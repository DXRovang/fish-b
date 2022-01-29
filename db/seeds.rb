# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'

fish = RestClient.get 'https://www.fishwatch.gov/api/species/red-snapper'
# binding.pry 
fish_array = JSON.parse(fish)
# ["Species Illustration Photo"]

binding.pry 

fish_array[0]["Image Gallery"].each do |fish|
  Fish.create(
    species_name: fish["src"],
  )
end
