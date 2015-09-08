class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
      t.hstore :name, null: false
    end
  end

  def down
    drop_table :cities
  end
end
