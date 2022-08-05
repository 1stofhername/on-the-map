class Tracker < ActiveRecord::Base
    has_many :tracker_mappers
    has_many :mappers, through: :tracker_mappers
end