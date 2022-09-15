class ChangeColumnNullAreas < ActiveRecord::Migration[7.0]
  def change
    change_column_null :areas, :opened_at, false
    change_column_null :areas, :closed_at, false
    change_column_null :areas, :address, false
  end
end
