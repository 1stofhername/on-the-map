class AddPasswordToCreators < ActiveRecord::Migration[6.1]
  def change
    add_column :creators, :password, :string
  end
end
