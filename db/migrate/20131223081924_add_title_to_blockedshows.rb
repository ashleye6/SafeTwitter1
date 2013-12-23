class AddTitleToBlockedshows < ActiveRecord::Migration
  def change
    add_column :blockedshows, :title, :string
  end
end
