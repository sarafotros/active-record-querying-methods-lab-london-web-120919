class Show < ActiveRecord::Base

    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
       Show.order(:most_popular_show).first
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        #Show.where(:rating = ? , lowest_rating)
        #Show.order(lowest_rating).last
        #Show.(:name)lowest_rating
        #Show.lowest_rating(:name)
        Show.order(rating: :asc).first
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where("rating > ? ", 5)
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end
end