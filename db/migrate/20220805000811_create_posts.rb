class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :image_file
      t.string :location
      t.string :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
