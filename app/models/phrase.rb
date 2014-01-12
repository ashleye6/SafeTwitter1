class Phrase < ActiveRecord::Base
  belongs_to :tvshow
  has_many :blockedshows, through: :tvshows

  before_save { |phrase| phrase.text = phrase.text.downcase}

  def select

  end
end
