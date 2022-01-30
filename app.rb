require_relative 'config/application'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require_relative 'models/restaurant'

get '/' do
  @count = Restaurant.count
  @restaurants = Restaurant.all.order(:name)
  erb :index
end

post '/restaurants' do
  restaurant = Restaurant.new(params)
  restaurant.save
  redirect '/'
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end
