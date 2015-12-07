class CitiesController < ApplicationController
  def index
    cities = City.all
    result_cities = cities.map { |city| [city.name[I18n.locale.to_s], city.id] }.reduce({}) do |cities_hash, city|
      cities_hash[city[0]] = city[1]
      cities_hash
    end
    respond_with result_cities
  end
end
