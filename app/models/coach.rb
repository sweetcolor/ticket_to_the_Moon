class Coach < ActiveRecord::Base
  belongs_to :train
  belongs_to :coach_type
end
