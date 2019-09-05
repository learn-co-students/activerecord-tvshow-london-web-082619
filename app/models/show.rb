class Show < ActiveRecord::Base

    #Return the lowest rating
    def self.highest_rating()
        Show.maximum(:rating)
    end

    #Return the show with the highest rating
    def self.most_popular_show
        Show.find_by(rating: highest_rating())
    end

    #Return the lowest rating
    def self.lowest_rating()
        Show.minimum(:rating)
    end

    #Return the show with the lowest rating
    def self.least_popular_show()
        Show.find_by(rating: lowest_rating())
    end

    #Return the sum of all ratings
    def self.ratings_sum()
        Show.sum(:rating)
    end

    #Return an array of shows with rating > 5
    def self.popular_shows()
        Show.where("rating > 5")
    end

    #Return an array of all shows in alphabetical order by name
    def self.shows_by_alphabetical_order()
        Show.all.order(:name)
    end
end