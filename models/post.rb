require_relative '../config/tumblr_client.rb'

class Post

	def self.get_posts(blog_name, post_type)
		client = Tumblr::Client.new
		client.posts(blog_name, post_type)
	end

end