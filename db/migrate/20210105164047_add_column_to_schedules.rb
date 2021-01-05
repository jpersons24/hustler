class AddColumnToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :worker_id, :integer
  end
end
