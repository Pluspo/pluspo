class RemoveAddressFromAreas < ActiveRecord::Migration[7.0]
  def change
    remove_column :areas, :address, :string
  end
end
