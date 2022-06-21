class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.integer :age
      t.date :birthday

      t.timestamps
    end
  end
end
