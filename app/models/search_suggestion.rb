class SearchSuggestion < ActiveRecord::Base
  attr_accessible :popularity, :term

  def self.terms_for(prefix)
  Rails.cache.fetch(["search-terms", prefix]) do 
    suggestions = where("term like ?", "#{prefix}_%")
    suggestions.order("popularity desc").limit(10).pluck(:term)
  end

  def self.index_products
    Tvshow.find_each do |t|
      index_term(tvshow.title)
      tvshow.title.split.each { |t| index_term(t)}
  end


  def self.index_term
    where(term: term.downcase).first_or_initialize.tap do |suggestion|
      suggestion.increment! :popularity
  end
  end
  end
  end
  end

