class ChangeColumnToSchedules < ActiveRecord::Migration[7.0]
  def change
    remove_index :schedules, name: :index_schedules_on_started_at_and_finished_at

    add_index :schedules, :started_at
    add_index :schedules, :finished_at
  end
end
