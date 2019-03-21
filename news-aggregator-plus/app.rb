require 'sinatra'
require 'sinatra/reloader'
require 'csv'
require 'json'

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
  @title = params["title"] || ""
  @description = params["description"] || ""
  @url = params["url"] || ""
  @error = params["error"] || ""
  erb :new
end

post '/articles/new' do
  articles = CSV.readlines('articles.csv', headers: true)

  title = params["title"].to_s
  description = params["description"].to_s
  url = params["url"].to_s
  id = articles.length + 1
  query = params.map{|key, value| "#{key}=#{value}"}.join("&")
  if !(description.length > 0) || !(url.length > 0) || !(title.length > 0)
    query += "&error=Title, Description, and Url must be provided."
    redirect "articles/new?#{query}"
  end

  if url[0..3] != "http"
    query += "&error=urls must begin with http."
    redirect "articles/new?#{query}"
  end

  if !(description.length > 20)
    query += "&error=Description must be more than 20 characters."
    redirect "articles/new?#{query}"
  end

  previously_submitted = articles.select {|article| article["url"].to_s == url}
  if previously_submitted.length != 0
    query += "&error=Url has been previously submitted."
    redirect "articles/new?#{query}"
  end

  CSV.open('articles.csv', 'a') do |file|
    file << [id,description,title,url]
  end

  redirect '/articles'
end

get '/get_json' do
  content_type :json
  random_article = lookup_random()
    {:title => random_article["title"], :description => random_article["description"], :url => random_article['url']}.to_json
end

get '/random' do
  erb :random
end

get '/articles/:id' do
  erb :show
end

def lookup_random
  articles = CSV.readlines('articles.csv', headers: true)
  prng = Random.new()
  random_num = prng.rand(articles.length+1)
  selected_article = articles.select {|article| article["id"].to_i == random_num}[0]
  return selected_article
end
