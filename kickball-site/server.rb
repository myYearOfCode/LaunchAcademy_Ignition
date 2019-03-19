require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/league"

set :bind, '0.0.0.0'  # bind to all interfaces


get "/" do
  redirect '/teams'
end

get "/teams" do
  @league = League.new()
  puts @league
  erb :teams
end

get "/team/:team_name" do
  @league = League.new()
  erb :team
end
