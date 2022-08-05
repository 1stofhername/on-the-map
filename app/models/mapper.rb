class Mapper < ActiveRecord::Base
    has_many :mapper_trackers
    has_many :trackers, through: :mapper_trackers
    has_many :posts
end