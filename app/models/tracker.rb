class Tracker < ActiveRecord::Base
    has_many :mapper_trackers
    has_many :mappers, through: :mapper:trackers
end