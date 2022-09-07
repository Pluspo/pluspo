class AddIndexShedulesStartedAtFinishedAt < ActiveRecord::Migration[7.0]
  def change
    add_index :shedules, [:started_at, :finished_at]
  end
end
