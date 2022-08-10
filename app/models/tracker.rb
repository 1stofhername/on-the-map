class Tracker < ActiveRecord::Base
    has_many :mapper_trackers
    has_many :mappers, through: :mapper_trackers

    def get_mappers
        self.mappers
    end

    def get_feed
        feed = []
        self.mappers.each do |m|
            feed << m.posts
        end
        feed
    end

end