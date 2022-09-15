class AddCycleToBatches < ActiveRecord::Migration[7.0]
  def change
    add_column :batches, :cycle, :integer, null: false, default: 0
  end
end
