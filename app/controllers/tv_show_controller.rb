class TvShowController < ApplicationController
  def index
  end

  def show
    @tvshows = Tvshow.find params[:id]
  end

end
