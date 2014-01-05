class ChangeBlockedshowsColumntype < ActiveRecord::Migration
  def self.up
    change_column :phrases, :blockedshow_id, :integer
  end
  def self.down
    change_column :phrases, :blockedshow_id, :decimal
  end
end
