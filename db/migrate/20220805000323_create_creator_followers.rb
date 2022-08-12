class CreateCreatorFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :creator_followers do |t|
      t.integer :follower_id
      t.integer :creator_id
    end
  end
end
