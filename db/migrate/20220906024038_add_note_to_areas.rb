class AddNoteToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :note, :string
  end
end
