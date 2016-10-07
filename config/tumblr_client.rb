require 'dotenv'
require 'tumblr_client'

Dotenv.load

Tumblr.configure do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.oauth_token = ['OAUTH_TOKEN']
  config.oauth_token_secret = ['OAUTH_TOKEN_SECRET']
end
