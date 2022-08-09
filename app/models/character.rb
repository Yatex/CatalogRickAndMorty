class Character < ApplicationRecord












  # Extracts the data from the api and add is to the db
  # def formatted_data(results, caller)
  #   return unless results
  #   results['data'].map { |m|
  #     attrs = { name: m['name'], status: m['status'], image: m['images'], type: m['type']}
  #     CreateCharacters.new(attrs)
  #     # Post.where(attrs).first_or_create! do |post|
  #     #   post.attributes = attrs
  #   }
  # end
  # #Gets all the characters from Rick & Morty
  # def get_characters
  #   characters = Rickmorty::Character.new
  #   response = characters.all
  #   results = JSON.parse(response.body)
  #   puts formatted_data(results, "characters")
  # end
  # #Gets all episodes from Rick & Morty
  # def get_episodes
  #   episodes = Rickmorty::Episode.new
  #   response = episodes.all
  #   results = JSON.parse(response.body)
  #   puts formatted_data(results, "episodes")
  # end
  # # Gets all location from Rick & Morty
  # def get_locations
  #   locations = Rickmorty::Location.new
  #   response = locations.all
  #   results = JSON.parse(response.body)
  #   puts formatted_data(results, "locations")
  # end

end
