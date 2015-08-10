class Ticket < ActiveRecord::Base
  belongs_to :coach
  belongs_to :coach_type
  belongs_to :ticket_type
  belongs_to :station_arrival, foreign_key: :station_arrival_id, class_name: TrainStation
  belongs_to :station_departure, foreign_key: :station_departure_id, class_name: TrainStation
end
