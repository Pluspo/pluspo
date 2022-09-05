class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas do |t|
      t.string :name, :null => false
      t.datetime :opened_at
      t.datetime :closed_at
      t.string :address
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
