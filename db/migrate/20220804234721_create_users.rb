class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :headline
      t.string :category
      t.string :password
      t.string :profile_img_link
      t.integer :follower_id
      t.timestamps
    end
  end
end
