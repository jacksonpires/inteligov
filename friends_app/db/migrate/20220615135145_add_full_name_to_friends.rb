class AddFullNameToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :full_name, :string
  end
end
