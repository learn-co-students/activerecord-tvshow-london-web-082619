class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end
    # class method, so we use self.
    # .maximum operator expects us to provide a column in brackets that it can then select the highest value from

    def self.lowest_rating
        self.minimum(:rating)
    end
    # same thing only using min not max

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end
    # uses .where, which remember from previous labs requires a string statement. Since we are invoking an earlier method, we use a bound parameter (?) and then offer the value we wish to substitute that parameter with immediately afterwards, seperated by a comma but still within the same parentheses. 
    # .first  eensures it returns a single value. Presumably there are more than one shows with the same highest rating in the database. 

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end
    # same as above, invokes helper method 'lowest_rating' as the bound parameter for the rating = ? bound parameter

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > 5")
    end
    # simple method, doesn't require bound parameter since we are not interpolating any helper methods

    def self.shows_by_alphabetical_order
        self.order(name: :asc)
    end
    # .order orders the array by the parameters we pass in brackets - in this case ordered by the name attribute and ascending




end
