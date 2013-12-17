require 'twitter'

Client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['consumer_key']
  #hide consumer secret
  config.consumer_secret = ENV['consumer_secret']
  config.oauth_token = ENV['oauth_token']
  config.oauth_token_secret = ENV['oauth_token_secret']
end


