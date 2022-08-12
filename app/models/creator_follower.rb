class CreatorFollower < ActiveRecord::Base
    belongs_to :creator
    belongs_to :follower
end