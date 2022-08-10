class AddIdCharacter < ActiveRecord::Migration[7.0]
  def change
    add_column :characters, :id_api, :integer
  end
end
