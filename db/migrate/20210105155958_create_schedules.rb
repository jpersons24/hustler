class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :task
      t.datetime :date
      t.integer :time
      t.datetime :deadline

      t.timestamps
    end
  end
end
