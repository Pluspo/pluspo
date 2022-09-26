class RemoveColumnFromBatches < ActiveRecord::Migration[7.0]
  def change
    remove_column :batches, :date_time
  end
end
