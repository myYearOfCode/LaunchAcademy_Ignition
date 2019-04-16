class AirplanesController < ApplicationController
  #GET /airplanes
  def index
    @airplanes = Airplane.all
  end
end
