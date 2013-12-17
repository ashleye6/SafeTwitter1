class SearchController < ApplicationController
 def index
          @query = params['q']
          @tvshows = Tvshow.search_for @query
          # @phrases = Phrase.search_for 
  end
end
