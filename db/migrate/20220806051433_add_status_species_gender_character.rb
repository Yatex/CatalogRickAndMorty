class AddStatusSpeciesGenderCharacter < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :status, :string
    add_column :characters, :species, :string
    add_column :characters, :gender, :string
  end
end
