class CreateMappers < ActiveRecord::Migration[6.1]
  def change
    create_table :mappers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :headline
      t.string :category
      t.string :profile_img_link
      t.timestamps
    end
  end
end
