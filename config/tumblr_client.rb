require 'dotenv'
require 'tumblr_client'

Dotenv.load

Tumblr.configure do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.oauth_token = ""
  config.oauth_token_secret = ""
end
