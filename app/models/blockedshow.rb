class Blockedshow < ActiveRecord::Base
  belongs_to :tvshow
  belongs_to :user
  has_many :phrases, through: :tvshows
  delegate :title, :image, to: :tvshow
end