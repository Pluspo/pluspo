class RemoveCyclesFromShedules < ActiveRecord::Migration[7.0]
  def change
    remove_column :shedules, :cycles, :string
  end
end
