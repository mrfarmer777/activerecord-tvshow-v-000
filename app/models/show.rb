class Show < ActiveRecord::Base

  def self.highest_rating
    max=Show.maximum("rating")
    Show.where("rating=?",max).first
  end


end
