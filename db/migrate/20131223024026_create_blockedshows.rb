class CreateBlockedshows < ActiveRecord::Migration
  def change
    create_table :blockedshows do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
