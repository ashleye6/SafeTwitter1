class TwitterController < ApplicationController
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
    Client.update(text) unless text==nil
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


