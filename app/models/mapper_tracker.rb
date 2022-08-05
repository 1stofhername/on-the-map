class Mapper_Tracker < ActiveRecord::Base
    belongs_to :mapper
    belongs_to :tracker
end