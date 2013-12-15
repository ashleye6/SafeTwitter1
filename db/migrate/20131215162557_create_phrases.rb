class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.string :text
      t.belongs_to :tv_show, index: true

      t.timestamps
    end
  end
end
