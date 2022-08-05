class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :media
      t.integer :location
      t.string :details
      t.integer :mapper_id
      t.timestamps
    end
  end
end
