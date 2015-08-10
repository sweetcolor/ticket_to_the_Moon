class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :name, null: false, limit: 30
      t.integer :station_ids, array: true, default: [], null: false
    end
  end
end
