class AddPasswordToTrackers < ActiveRecord::Migration[6.1]
  def change
    add_column :trackers, :password, :string
  end
end
