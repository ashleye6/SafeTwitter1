class Phrase < ActiveRecord::Base
  belongs_to :tvshow
  has_many :blockedshows, through: :tvshows
  def select

  end
end
