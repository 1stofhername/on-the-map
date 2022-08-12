class Creator < ActiveRecord::Base
    has_many :creator_followers
    has_many :followers, through: :creator_followers
    has_many :posts

    def get_followers
        self.followers
    end

    def tracker_count
        self.followers.length
    end

    def get_posts
        self.posts
    end

    def post_count
        self.posts.count
    end
end