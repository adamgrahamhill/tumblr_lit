require 'sinatra'
require "sinatra/activerecord"
set :database, {adapter: "pg", database: "tumblr_lit.pg"}
require_relative 'config/tumblr_client.rb'

get '/' do
	"Mic check ah ha ha"
end

get '/test' do
	client = Tumblr::Client.new
	posts = client.posts("edgar allan poe")  #see if I can get a response from my account
	"#{client.info} and\n #{posts}"
end
