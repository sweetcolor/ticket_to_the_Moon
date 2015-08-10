class CoachType < ActiveRecord::Base
  has_many :coaches
  has_many :tickets
end
