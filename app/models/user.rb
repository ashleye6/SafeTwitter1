class User < ActiveRecord::Base
  has_many :blockedshows
  has_many :tvshows, through: :blockedshows
  
  def self.from_omniauth(auth)
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["nickname"]
      user.oauth_token = auth["credentials"]["token"]
      user.oauth_secret = auth["credentials"]["secret"]
      user.image = auth["info"]["image"]

      #image auth info image

    end
  end

  def twitterclient
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['consumer_key']
      config.consumer_secret = ENV['consumer_secret']
      config.access_token = oauth_token
      config.access_token_secret = oauth_secret
    end
  end
end
