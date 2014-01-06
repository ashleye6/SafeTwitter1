class AddReferenceToTvshows < ActiveRecord::Migration
  def change
    add_reference :tvshow, :blockedshow
  end
end
