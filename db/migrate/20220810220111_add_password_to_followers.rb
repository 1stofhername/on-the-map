class AddPasswordToFollowers < ActiveRecord::Migration[6.1]
  def change
    add_column :followers, :password, :string
  end
end
