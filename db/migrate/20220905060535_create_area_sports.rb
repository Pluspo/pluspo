class CreateAreaSports < ActiveRecord::Migration[7.0]
  def change
    create_table :area_sports do |t|
      t.references :area, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
