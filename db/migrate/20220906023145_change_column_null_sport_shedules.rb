class ChangeColumnNullSportShedules < ActiveRecord::Migration[7.0]
  def change
    change_column_null :sport_shedules, :started_at, false
    change_column_null :sport_shedules, :finished_at, false
  end
end
