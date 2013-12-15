OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do 
  # provider :developer unless Rails.env.production?
  # provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
    provider :twitter, 'FPub9X051YFtbYr72URsXA', 'rJUvRITZ80gVFZ4ifmS5soNh7Tgvpj7FkeKmUMewlAs'


end