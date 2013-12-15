namespace :search_suggestions do
  desc "Generate search suggestions from tvshows"
  task :index => :environment do
    SearchSuggestion.index_tvshows
  end
end