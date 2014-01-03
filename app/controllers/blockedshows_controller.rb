class BlockedshowsController < ApplicationController
  def new
    @blockedshow = Blockedshow.new
  end
  def delete
    @tvshow = Tvshow.find params[:blockedshow][:tvshow_id]
    @blockedshow = Blockedshow.destroy(
        :user_id =>current_user.id,
        :title=> @tvshow.title,
        :image=> @tvshow.image,
        :tvshow_id=>@tvshow.id
    )
  end

  def show

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
      redirect_to tv_show_index_path
    else
      render 'new'
    end
  end
  private

  def safe_blockedshow
    params.require(:blockedshow).permit(:title, :user_id, :tvshow_id, :image)
  end

end