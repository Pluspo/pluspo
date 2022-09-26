class ChangeColumnFromAreas < ActiveRecord::Migration[7.0]
  def change
    change_column :areas, :note, :text
  end
end
