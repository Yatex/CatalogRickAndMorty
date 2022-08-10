class Character < ApplicationRecord

  validates :name, :presence => true
  validates :url, :presence => true
  validates :id_api, :presence => true
  validates :species, :presence => true

end
