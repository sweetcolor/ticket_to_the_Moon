class City < ActiveRecord::Base
  translates :name
  has_many :stations
end
