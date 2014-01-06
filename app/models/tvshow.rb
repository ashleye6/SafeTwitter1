class Tvshow < ActiveRecord::Base
    has_many :phrases
    belongs_to :blockedshow
    has_many :users, through: :blockedshows


    def self.search_for (query)
                where('title LIKE :query', query: "%#{query}%")
        end
end
