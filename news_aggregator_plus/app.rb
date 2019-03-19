require 'sinatra'
require 'sinatra/reloader'
require 'csv'

configure :development, :test do
  require 'pry'
end

Dir[File.join(File.dirname(__FILE__), 'lib', '**', '*.rb')].each do |file|
  require file
  also_reload file
end

get '/' do
  redirect '/articles'
end

get '/articles' do
  erb :index
end

get '/articles/new' do
  erb :new
end

post '/articles/new' do

  articles = CSV.readlines('articles.csv', headers: true)

  title = params["title"]
  description = params["description"]
  url = params["url"]
  id = articles.length + 1

  CSV.open('articles.csv', 'a') do |file|
    file << [id,description,title,url]
  end

  redirect '/articles'
end
