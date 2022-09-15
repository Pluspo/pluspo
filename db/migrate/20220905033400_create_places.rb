class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :name, :null => false
      t.datetime :opened_at, :null => false
      t.datetime :closed_at, :null => false
      t.string :address, :null => false
      t.text :message
      t.string :city, :null => false

      t.timestamps
    end
    add_index :places, :name, unique: true
  end
end
