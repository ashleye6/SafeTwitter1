class TwitterController < ApplicationController
  before_filter :load_tweets

  def load_tweets
    if current_user
      @tweets = current_user.twitterclient.home_timeline
    else
      end
  end

  def index
  end

  def login
  end

  #needs to go through blockshows.tvshows

  def timeline
    @key = current_user.tvshows.map(&:phrases).flatten.map(&:text)


  end

  def tweet
    text = params[:my_tweet]
    current_user.twitterclient.update(text) unless text==nil
    redirect_to twitter_timeline_path
  end
  private

  #needs to go through blockedshows.map(&:tvshows).map(&:phrases)

  def is_redacted? tweet
    @phrases ||= current_user.tvshows.map(&:phrases).flatten.map(&:text)
    @phrases.any? { |phrase| tweet.text.include? phrase }
  end

  helper_method :is_redacted?
  
end


