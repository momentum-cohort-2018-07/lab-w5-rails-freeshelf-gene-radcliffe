class AddUsernameandpasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_column :users, :password, :string
  end
end
