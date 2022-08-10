module CharactersHelper
  def create_characters(link)
    response = RestClient.get(link)
    characters_array = JSON.parse(response)
    if(!characters_array["info"]["next"].nil?)
      create_characters(characters_array["info"]["next"])
    else
      characters_array["results"].each do |info|
        exist = Character.where("id_api == ?", info["id"])
        if(exist[0].nil?)
          new_character = Character.new(name: info["name"], url: info["url"], image: info["image"], status: info["status"], species: info["species"], gender: info["gender"], id_api: info["id"])
          new_character.save
        end
      end
    end
    characters_array["results"].each do |info|
      exist = Character.where("id_api == ?", info["id"])
      if(exist[0].nil?)
        new_character = Character.new(name: info["name"], url: info["url"], image: info["image"], status: info["status"], species: info["species"], gender: info["gender"], id_api: info["id"])
        new_character.save
      end
    end
  end
end
