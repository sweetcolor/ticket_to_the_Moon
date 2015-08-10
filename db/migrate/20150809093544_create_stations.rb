class CreateStations < ActiveRecord::Migration
  def up
    create_table :stations do |t|
      t.belongs_to :city, null: false
    end
    Station.create_translation_table! name: {
                                       type: :string,
                                       null: false,
                                       limit: 30
                                   }
    add_foreign_key :stations, :cities
  end

  def down
    drop_table :stations
    Station.drop_translation_table!
  end
end
