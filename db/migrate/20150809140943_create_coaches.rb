class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.integer :number, limit: 2
      t.integer :quantity_places, limit: 2
      t.belongs_to :train, null: false
      t.belongs_to :coach_type, null: false
    end
    add_foreign_key :coaches, :trains
    add_foreign_key :coaches, :coach_types
  end
end
