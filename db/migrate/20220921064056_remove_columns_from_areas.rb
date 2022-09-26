class RemoveColumnsFromAreas < ActiveRecord::Migration[7.0]
  def change
    remove_column :areas, :opened_at
    remove_column :areas, :closed_at
  end
end
