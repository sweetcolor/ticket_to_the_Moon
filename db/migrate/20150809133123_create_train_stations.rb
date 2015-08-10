class CreateTrainStations < ActiveRecord::Migration
  def change
    create_table :train_stations do |t|
      t.time :departure, null: false
      t.time :arrival, null: false
      t.decimal :price, null: false, precision: 6, scale: 2
      t.integer :distance, null: false
      t.belongs_to :train, null: false
      t.belongs_to :station, null: false
    end
    add_foreign_key :train_stations, :trains
    add_foreign_key :train_stations, :stations
  end
end
