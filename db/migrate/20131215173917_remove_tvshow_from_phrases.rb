class RemoveTvshowFromPhrases < ActiveRecord::Migration
  def up
    remove_column :phrases, :tvshow, :reference
  end

  def down
    add_column :phrases, :tvshow, :reference
  end
end
