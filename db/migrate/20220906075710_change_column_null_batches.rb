class ChangeColumnNullBatches < ActiveRecord::Migration[7.0]
  def change
    change_column_null :batches, :started_at, false
    change_column_null :batches, :finished_at, false
  end
end
