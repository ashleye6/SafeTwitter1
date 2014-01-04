class CreatePhrases < ActiveRecord::Migration
  def change
    create_table 'phrases' do |t|
      t.string :text
      t.belongs_to :tvshow, index: true
      t.belongs_to 'blockedshows', index: true

      t.timestamps
    end
  end
end
