class TwitterController < ApplicationController
  before_filter :loggedin, only: [:timeline]

  def timeline
    @tweets = current_user.twitterclient.home_timeline
    @phrases ||= current_user.tvshows.map(&:phrases).flatten.map(&:text)
  end

  def index
  end

  def login
  end

  def tweet
    text = params[:my_tweet]
    current_user.twitterclient.update(text) unless text==nil
    redirect_to twitter_timeline_path
  end

  # NON-ROUTABLE ACTIONS

  def loggedin
    unless current_user
      redirect_to root_path
    end
  end

  def is_redacted? tweet
    @phrases.any? { |phrase| tweet.text.downcase.include? phrase }
  end
  helper_method :is_redacted?

  def blocked_phrases tweet
    @phrases.map {|phrase| (phrase if tweet.text.downcase.include?(phrase))}.reject(&:blank?)
  end
  helper_method :blocked_phrases

end


