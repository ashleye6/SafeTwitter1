class AddReferenceToBlockedshows < ActiveRecord::Migration
  def change
    add_reference :blockedshows, :tvshow, index: true
  end
end
