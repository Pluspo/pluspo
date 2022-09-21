class ChangeColumnsFromBatches < ActiveRecord::Migration[7.0]
  def change
    change_column :batches, :started_at, :string
    change_column :batches, :finished_at, :string
  end
end
