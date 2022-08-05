class Mapper < ActiveRecord::Base
    has_many :mapper_trackers
    has_many :trackers, through: :mapper_trackers
    has_many :posts

    def get_trackers
        self.trackers
    end

    def tracker_count
        self.trackers.length
    end

    def get_posts
        self.posts
    end

    def post_count
        self.posts.count
    end
end