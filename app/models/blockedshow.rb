class Blockedshow < ActiveRecord::Base
  has_many :phrases
  belongs_to :user
end