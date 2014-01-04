class BlockedshowsController < ApplicationController
  def new
    @blockedshow = Blockedshow.new
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
    @tvshow = Tvshow.find params[:blockedshow][:tvshow_id]
    @blockedshow = Blockedshow.new(
        :user_id =>current_user.id,
        :title=> @tvshow.title,
        :image=> @tvshow.image,
        :tvshow_id=>@tvshow.id
    )

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
    params.require(:blockedshow).permit(:title, :user_id, :tvshow_id, :image)
  end

end