class Blockedshow < ActiveRecord::Base
  has_many :phrases
  has_one :tvshow
  belongs_to :user
end