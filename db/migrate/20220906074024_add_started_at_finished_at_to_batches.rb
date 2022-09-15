class AddStartedAtFinishedAtToBatches < ActiveRecord::Migration[7.0]
  def change
    add_column :batches, :started_at, :datetime
    add_column :batches, :finished_at, :datetime
  end
end
