class RemoveColumnDateFromTasks < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :date
    remove_column :tasks, :time
  end
end
