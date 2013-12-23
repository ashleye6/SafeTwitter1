class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :load_tweets
  #before_action :require_login

  def load_tweets
    @tweets = Client.home_timeline 
  end

  private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    helper_method :current_user

    #def require_login
    #  unless logged_in?
    #    flash[:error] = "You must be logged in to access this application"
    #    redirect_to root_url
    #  end
    #end
    #
    #def logged_in?
    #  !!current_user
    #end
end

#create another model with blocked shows

#blockedphrases_id
#phrase_id
#user_id

#current_user.blockedphrases ---> pass into redacted twitter helper

#blocked.select do |b|
#tweet.include? b

