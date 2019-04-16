class TrainsController < ApplicationController
  #GET /trains 
  def index
    @trains = Train.all
  end
end
