class Follower < ActiveRecord::Base
    has_many :creator_followers
    has_many :creators, through: :creator_followers

    def get_creators
        self.creators
    end

    def get_feed
        feed = []
        self.creators.each do |c|
            feed << c.posts
        end
        feed
    end

end