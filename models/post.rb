require_relative '../config/tumblr_client.rb'

class Post

	def self.get_posts(blog_name, post_type) #Requests all posts of specified type from Tumblr api
		client = Tumblr::Client.new
		client.posts(blog_name, post_type)['posts']
	end

end