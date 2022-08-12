class User < ActiveRecord::Base
    has_many :followers
    has_many :posts

    def get_followers
        followers=[]
        self.followers.each do |f|
            followers << f.get_identity
        end
        followers
    end

    def follower_count
        self.followers.length
    end

    def get_posts
        self.posts
    end

    def post_count
        self.posts.count
    end
end