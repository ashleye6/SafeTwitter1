class Tvshow < ActiveRecord::Base
    has_many :phrases
    has_many :blockedshows
    has_many :users, through: :blockedshows


    def self.search_for (query)
                where('title LIKE :query', query: "%#{query}%")
        end
end
