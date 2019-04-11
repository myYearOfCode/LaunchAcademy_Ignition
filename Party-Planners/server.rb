require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/flash'
require "pry" if development? || test?
require_relative 'config/application'

set :bind, '0.0.0.0'  # bind to all interfaces

configure do
  set :views, 'app/views'
end

enable :sessions

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
  # also_reload file
end

get '/' do
  redirect '/parties'
end

get '/parties' do
  @party_list = Party.all
  # binding.pry
  erb :'parties/index'
end

get '/parties/new' do
  @party_name = params[:Name]
  @party_description = params[:Description]
  @party_location = params[:Location]
  erb :'parties/new'
end

post '/parties/new' do
  @party_name = params[:Name]
  @party_description = params[:Description]
  @party_location = params[:Location]
  @errors = []
  newParty = Party.new(name: @party_name, description: @party_description, location: @party_location)
  if newParty.valid? then
    newParty.save
    redirect "/parties/#{newParty.id}"
  end
  @errors = newParty.errors.full_messages
  erb :'parties/new'
end

get '/parties/add' do
  erb :'parties/add'
end

get '/parties/:id' do
  @party = Party.find(params[:id])
  @friends = sort_friends(Friend.all - @party.friends)
  erb :'parties/show'
end

def sort_friends(friends)
  friends.sort_by { |friend| friend.first_name.downcase }
end

get '/friends' do
  @friends = sort_friends(Friend.all)
  erb :'friends/index'
end

post '/friends/invite' do
  Invitation.create(friend_id: params[:friend_id], party_id: params[:party_id])
  redirect "/parties/#{params[:party_id]}"
end

get '/friends/new' do
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @errors = []
    erb :'/friends/new'
end

post '/friends/new' do
  @first_name = params[:first_name]
  @last_name = params[:last_name]
  @errors = []
  newFriend = Friend.new(first_name: @first_name, last_name: @last_name)
  if newFriend.valid? then
    newFriend.save
    flash[:notice] = "Congrats, you made a new friend!"
    redirect "/friends"
  end
  @errors = newFriend.errors.full_messages
  erb :'friends/new'
end
