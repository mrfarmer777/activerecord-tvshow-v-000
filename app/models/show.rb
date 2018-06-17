class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")
  end

  def self.most_popular_show
    max=Show.maximum('rating')
    Show.where("rating=?",max).first
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

  def least_popular_show
    min=Show.maximum('rating')
    Show.where("rating=?",min).first
  end
  


end
