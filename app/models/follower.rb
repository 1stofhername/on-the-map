class Follower < ActiveRecord::Base
    belongs_to :user

    def get_followed_identity
        User.where(id: self.user_id)
    end

    def self.get_followers_by_id id
        Follower.where(follower_id: id)
    end

    # def get_feed
    #     feed = []
    #     self.creators.each do |c|
    #         feed << c.posts
    #     end
    #     feed
    # end

end