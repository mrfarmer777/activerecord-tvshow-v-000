class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    Show.where("rating=?",Show.highest_rating).first
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def self.least_popular_show
    Show.where("rating=?",Show.lowest_rating).first
  end

  def ratings_sum
    Show.sum("ratings")
  end

  def popular_shows
    Show.where("rating>?",5)
  end

  def shows_by_alphabetical_order
    Show.order("title")
  end



end
