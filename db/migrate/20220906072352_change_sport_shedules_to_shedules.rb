class ChangeSportShedulesToShedules < ActiveRecord::Migration[7.0]
  def change
    rename_table :sport_shedules, :shedules
  end
end
