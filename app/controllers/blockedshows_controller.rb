class BlockedshowsController < ApplicationController
  def new
    @blockedshow = Blockedshow.new
    @tvshows = Tvshow.all
  end


  def destroy
    @blockedshow = Blockedshow.find(params[:id])
    @blockedshow.destroy

    #respond_to do |format|
    #  format.html { render action: "destroy" }
    #  format.json { head :no_content }

      redirect_to blockedshows_index_path


  end

  def create
    @blockedshow = Blockedshow.new(safe_blockedshow)
    @blockedshow.user = current_user

    if @blockedshow.save
      flash[:notice] = "New Blocked TV Show added successfully"
      redirect_to blockedshows_index_path
    else
      render 'new'
    end

  end

  def index
  end
  private

  def safe_blockedshow
    params.require(:blockedshow).permit(:tvshow_id)
  end

end