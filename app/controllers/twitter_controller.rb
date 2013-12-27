class TwitterController < ApplicationController
  def index
  end

  def login
  end

  private

  def is_redacted? tweet
    @phrases ||= current_user.blockedshows.map(&:phrases).flatten.map(&:text)
    @phrases.any? { |phrase| tweet.text.include? phrase }
  end
  helper_method :is_redacted?
  
end
