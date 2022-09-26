class RenameShedulesToSchedules < ActiveRecord::Migration[7.0]
  def change
    rename_table :shedules, :schedules
  end
end
