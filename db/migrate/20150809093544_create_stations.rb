class CreateStations < ActiveRecord::Migration
  def up
    create_table :stations do |t|
      t.hstore :name, null: false
      t.belongs_to :city, null: false
    end
    add_foreign_key :stations, :cities
  end

  def down
    remove_foreign_key :stations, :cities
    drop_table :stations
  end
end
