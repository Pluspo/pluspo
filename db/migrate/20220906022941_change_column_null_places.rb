class ChangeColumnNullPlaces < ActiveRecord::Migration[7.0]
  def change
    change_column_null :places, :opened_at, false
    change_column_null :places, :closed_at, false
    change_column_null :places, :address, false
  end
end
