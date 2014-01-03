class Blockedshow < ActiveRecord::Base
  has_many :phrases
  has_many :tvshows
  belongs_to :user
end