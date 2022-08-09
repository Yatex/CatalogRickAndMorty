# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

def create_characters(link)
  response = RestClient.get(link)
  characters_array = JSON.parse(response)
  if(!characters_array["info"]["next"].nil?)
    create_characters(characters_array["info"]["next"])
  else
    characters_array["results"].each do |info|
      new_character = Character.new(name: info["name"], url: info["url"], image: info["image"], status: info["status"], species: info["species"], gender: info["gender"])
      new_character.save
    end
  end
  characters_array["results"].each do |info|
    new_character = Character.new(name: info["name"], url: info["url"], image: info["image"], status: info["status"], species: info["species"], gender: info["gender"])
    new_character.save
  end
end

create_characters("https://rickandmortyapi.com/api/character")