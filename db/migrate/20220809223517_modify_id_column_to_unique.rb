class ModifyIdColumnToUnique < ActiveRecord::Migration[7.0]
  def change
    change_column :characters, :id_api, :integer, unique: true
  end
end
