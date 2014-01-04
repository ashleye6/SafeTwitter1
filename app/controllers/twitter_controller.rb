class TwitterController < ApplicationController
  def index
  end

  def login
  end

  def timeline
    @key = current_user.blockedshows.map(&:phrases).flatten.map(&:text)
  end

  def tweet
    text = params[:my_tweet]
    Client.update(text) unless text==nil
    redirect_to twitter_timeline_path
  end
  private

  def is_redacted? tweet
    @phrases ||= current_user.blockedshows.map(&:phrases).flatten.map(&:text)
    @phrases.any? { |phrase| tweet.text.include? phrase }
  end

  helper_method :is_redacted?
  
end


