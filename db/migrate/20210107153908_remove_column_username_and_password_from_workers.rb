class RemoveColumnUsernameAndPasswordFromWorkers < ActiveRecord::Migration[6.1]
  def change
    remove_column :workers, :username 
    remove_column :workers, :password_digest
    remove_column :workers, :photo
    remove_column :workers, :age
    remove_column :users, :photo
    remove_column :tasks, :accepted
    remove_column :skills, :category
  end
end
