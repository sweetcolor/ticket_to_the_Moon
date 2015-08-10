class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name, null: false, limit: 30
      t.string :surname, null: false, limit: 30
      t.string :middle_name, null: false, limit: 30
      t.date :date, null: false
      t.timestamp :created_at, null: false
      t.integer :place_number, null: false, limit: 2

      t.belongs_to :coach, null: false
      t.belongs_to :coach_type, null: false
      t.belongs_to :ticket_type, null: false
      t.belongs_to :station_departure, null: false
      t.belongs_to :station_arrival, null: false
    end
    add_foreign_key :tickets, :coaches
    add_foreign_key :tickets, :coach_types
    add_foreign_key :tickets, :ticket_types
    add_foreign_key :tickets, :train_stations, column: :station_departure_id
    add_foreign_key :tickets, :train_stations, column: :station_arrival_id
  end
end
