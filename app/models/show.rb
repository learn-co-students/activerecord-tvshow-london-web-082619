class Show < ActiveRecord::Base


    def self.highest_rating
        self.maximum "rating" # string whitout brackets
    end

    def self.most_popular_show
        # whitout first: will return an arry 
        show = self.where("rating = ?", self.highest_rating).first       
    end

    def self.lowest_rating
       self.minimum (:rating) # symble with brackets
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum
        self.sum :rating # symble whitout brackets
    end
    
    def self.popular_shows
        self.where "rating > 5"
    end

    def self.shows_by_alphabetical_order
        self.order :name
    end
end

# highest_rating
