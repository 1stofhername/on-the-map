class Tracker < ActiveRecord::Base
    has_many :mapper_trackers
    has_many :mappers, through: :mapper_trackers

    def get_mappers
        self.mappers
    end
end