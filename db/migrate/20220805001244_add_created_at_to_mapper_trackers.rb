class AddCreatedAtToMapperTrackers < ActiveRecord::Migration[6.1]
  def change
    add_column :mapper_trackers, :datetime :created_at, :datetime
  end
end
