class User < ActiveRecord::Base
    has_many :followers
    # has_many :users, through: :followers
    has_many :posts

    def get_followers
        self.followers.each do |f|
            puts :follower_id
        end
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