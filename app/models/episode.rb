class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances


    def self.avgrating(episode)
        ratings = []
        episode.appearances.each do |appearance| 
            ratings << appearance.rating
        end
        average = ratings.inject{ |sum, el| sum + el }.to_f / ratings.size
        average

    end

end
