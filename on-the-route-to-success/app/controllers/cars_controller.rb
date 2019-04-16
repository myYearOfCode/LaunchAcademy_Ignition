class CarsController < ApplicationController
  # GET /cars
  def index
    @cars = Car.all
  end
end
