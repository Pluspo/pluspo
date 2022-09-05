class CreateSportShedules < ActiveRecord::Migration[7.0]
  def change
    create_table :sport_shedules do |t|
      t.string :cycles
      t.datetime :started_at
      t.datetime :finished_at
      t.references :area_sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
