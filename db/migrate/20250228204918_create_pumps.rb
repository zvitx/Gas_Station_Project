class CreatePumps < ActiveRecord::Migration[8.0]
  def change
    create_table :pumps do |t|
      t.string :fuel_type
      t.integer :capacity
      t.references :gas_station, null: false, foreign_key: true

      t.timestamps
    end
  end
end
