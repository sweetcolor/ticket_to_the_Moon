class Station < ActiveRecord::Base
  translates :name
  belongs_to :city
  has_many :train_stations
end
