class AddImagetoTvShows < ActiveRecord::Migration
  def change
    add_column :tvshows, :image, :string 
  end
end
