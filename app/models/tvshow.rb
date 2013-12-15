class Tvshow < ActiveRecord::Base
    has_many :phrases

    def self.search_for (query)
                where('title LIKE :query', query: "%#{query}%")
        end
end
