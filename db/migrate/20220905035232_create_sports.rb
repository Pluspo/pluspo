class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name, :null => false

      t.timestamps
    end
    add_index :sports, :name, unique: true
  end
end
