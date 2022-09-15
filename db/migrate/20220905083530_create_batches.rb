class CreateBatches < ActiveRecord::Migration[7.0]
  def change
    create_table :batches do |t|
      t.datetime :date_time, :null => false
      t.references :area_sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
