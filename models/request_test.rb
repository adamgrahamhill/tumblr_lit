#request_test.rb

client = Tumblr::Client.new
@posts = client.posts("sumohill.tumblr.com")  #see if I can get a response from my account