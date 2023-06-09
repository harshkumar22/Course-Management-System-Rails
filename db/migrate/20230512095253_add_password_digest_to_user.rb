class AddPasswordDigestToUser < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :password_digest, :string
    remove_column :users, :password
  end
  
  def down
    add_column :users, :password, :string
    remove_column :users, :password_digest
  end
end
