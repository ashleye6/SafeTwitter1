class Phrase < ActiveRecord::Base
  belongs_to :tvshow
  belongs_to :blockedshow

  def select

  end
end
