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

    def get_followed_users
        followed_users = []
        Follower.get_followers_by_id(self.id).each do |u|
            followed_users << u.user
        end
        followed_users
    end

    def get_followed_users_posts
        @posts=[]
        self.get_followed_users.each do |u|
            @posts << u.get_posts
        end
        @posts.flatten!.sort_by(&:created_at)
    end

    def get_posts
        self.posts
    end

    def post_count
        self.posts.count
    end
    
    def self.get_user_by_id (id)
        User.find(id)
    end
end