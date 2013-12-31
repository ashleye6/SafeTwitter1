class BlockedshowsController < ApplicationController
  def new
    @blockedshow = Blockedshow.new
    @tvshow = Tvshow.new
  end
  def create
    @blockedshow = Blockedshow.new
    if @blockedshow.save
      flash[:notice] = "New Blocked TV Show added successfully"
      redirect_to tv_show_index_path
    else
      render 'new'
    end
  end
  #private
  #
  #def safe_blockedshow
  #  params.require(:blockedshow).permit(:title, :user_id, :image)
  #end
end
