require 'sinatra'
require "sinatra/activerecord"
set :database, {adapter: "postgresql", database: "tumblr_lit.pg"}
require_relative 'config/tumblr_client.rb'
require_relative 'models/post'

get '/' do
	"Mic check ah ha ha"
end

get '/test' do
	@posts = Post.get_posts("sumohill", :type => "photo")
	p @posts
	erb :index
end
