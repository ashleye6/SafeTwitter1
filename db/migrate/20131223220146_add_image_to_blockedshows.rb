class AddImageToBlockedshows < ActiveRecord::Migration
  def change
    add_column :blockedshows, :image, :string
  end
end
