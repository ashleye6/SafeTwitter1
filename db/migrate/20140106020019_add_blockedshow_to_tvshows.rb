class AddBlockedshowToTvshows < ActiveRecord::Migration
  def change
    add_column :tvshows, :blockedshow_id, :integer
  end
end
