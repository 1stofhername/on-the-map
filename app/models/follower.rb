class Follower < ActiveRecord::Base
    belongs_to :user

    def get_identity
        User.find(follower_id)
    end

    # def get_feed
    #     feed = []
    #     self.creators.each do |c|
    #         feed << c.posts
    #     end
    #     feed
    # end

end