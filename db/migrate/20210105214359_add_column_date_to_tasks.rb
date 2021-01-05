class AddColumnDateToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :date, :datetime
    add_column :tasks, :time, :integer
    add_column :tasks, :deadline, :datetime
  end
end
