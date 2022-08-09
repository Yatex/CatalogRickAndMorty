class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :type
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
