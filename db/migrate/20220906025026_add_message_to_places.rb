class AddMessageToPlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :places, :message, :text
  end
end
