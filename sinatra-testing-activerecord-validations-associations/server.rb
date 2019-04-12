require 'sinatra'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?
require 'sinatra/flash'
require "pry" if development? || test?

set :bind, '0.0.0.0'  # bind to all interfaces

enable :sessions

configure :development, :test do
  require 'pry'
end

configure do
  set :views, 'app/views'
end

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

get '/' do
  @title = "Hello World"
  erb :index
end
