class Train < ActiveRecord::Base
  has_many :coaches
  has_many :train_stations
end
