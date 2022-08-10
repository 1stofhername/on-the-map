class AddPasswordToMappers < ActiveRecord::Migration[6.1]
  def change
    add_column :mappers, :password, :string
  end
end
