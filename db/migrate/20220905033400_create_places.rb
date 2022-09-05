class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :name, :null => false
      t.datetime :opened_at
      t.datetime :closed_at
      t.string :address

      t.timestamps
    end
    add_index :places, :name, unique: true
  end
end
