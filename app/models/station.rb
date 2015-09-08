class Station < ActiveRecord::Base
  belongs_to :city
  has_many :train_stations
  store_accessor :name, *I18n.config.available_locales
  rails_admin do
    City.stored_attributes[:name].each do |locale|
      configure locale do
        label 'name ' + locale.to_s
      end
    end
  end
end
