class CitiesController < ApplicationController
  def index
    respond_with City.all
  end
end
