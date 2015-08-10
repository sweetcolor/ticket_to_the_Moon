class TrainStation < ActiveRecord::Base
  belongs_to :train
  belongs_to :station
  has_many :arrival_tickets, foreign_key: :station_arrival_id, class_name: Ticket
  has_many :departure_tickets, foreign_key: :station_departure_id, class_name: Ticket
end
