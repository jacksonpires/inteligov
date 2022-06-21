class AddLastNameToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :last_name, :string
  end
end
