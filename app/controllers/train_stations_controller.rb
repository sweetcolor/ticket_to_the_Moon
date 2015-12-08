class TrainStationsController < ApplicationController
  def index
    cities = Station.select(
            'cities.id as c_id, cities.name as c_name, stations.id as s_id, stations.name as s_name'
    ).joins(:city).select('*').joins(:train_stations)

    result_cities = cities.to_a.map { |city_| [city_.c_name[I18n.locale.to_s],
        city_.slice(:c_id, :s_id, :s_name, :departure, :arrival, :price, :distance)
    ] }.reduce({}) do |cities_hash, city|
      cities_hash[city[0]] = city[1]
      cities_hash
    end
    respond_with result_cities
  end
end
