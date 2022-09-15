class AddStatusToAreas < ActiveRecord::Migration[7.0]
  def change
    add_column :areas, :status, :integer, null: false, default: 0
  end
end
