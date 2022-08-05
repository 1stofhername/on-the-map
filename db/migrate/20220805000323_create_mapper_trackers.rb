class CreateMapperTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :mapper_trackers do |t|
      t.integer :tracker_id
      t.integer :mapper_id
    end
  end
end
