class CreateBlockedshows < ActiveRecord::Migration
  def change
    create_table :blockedshows do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tvshow, index: true

      t.timestamps
    end
  end
end
