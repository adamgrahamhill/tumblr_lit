require 'sinatra'
require "sinatra/activerecord"
set :database, {adapter: "postgresql", database: "tumblr_lit.pg"}
require_relative 'config/tumblr_client.rb'
require_relative 'models/post'

helpers do
	def photo_url(post)
		post['photos'][0]['alt_sizes'][0]['url']
	end
end

get '/' do
	"Mic check ah ha ha"
end

get '/test' do
	@posts = Post.get_posts("sumohill", :type => "photo")
	#@posts = Post.create_photo_array("sumohill", :type => "photo")
	erb :index
end
