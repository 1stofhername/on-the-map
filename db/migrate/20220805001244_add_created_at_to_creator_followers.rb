class AddCreatedAtToCreatorFollowers < ActiveRecord::Migration[6.1]
  def change
    add_column :creator_followers, :created_at, :datetime
  end
end
