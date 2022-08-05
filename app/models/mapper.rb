class Mapper < ActiveRecord::Base
    has_many :tracker_mappers
    has_many :trackers, through: :tracker_mappers
end