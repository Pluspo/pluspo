class AddIndexPlacesCity < ActiveRecord::Migration[7.0]
  def change
    add_index :places, :city
  end
end
