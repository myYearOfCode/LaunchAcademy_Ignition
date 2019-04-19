class Api::V1::GifsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    gifs = Gif.order(likes: :desc)
    render json: gifs
  end

  def create
    data = JSON.parse(request.body.read)
    new_gif = Gif.create(name: data["name"], url: data["url"], likes: 0)
    render json: new_gif
  end
end
