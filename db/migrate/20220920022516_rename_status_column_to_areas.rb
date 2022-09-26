class RenameStatusColumnToAreas < ActiveRecord::Migration[7.0]
  def change
    rename_column :areas, :status, :location
  end
end
