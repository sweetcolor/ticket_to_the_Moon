class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities
    City.create_translation_table! name: {
                                       type: :string,
                                       null: false,
                                       limit: 30
                                   }
  end

  def down
    drop_table :cities
    City.drop_translation_table!
  end
end
