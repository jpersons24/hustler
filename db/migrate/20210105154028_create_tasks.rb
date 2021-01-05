class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :worker_id
      t.text :description
      t.integer :cost
      t.boolean :accepted
      t.boolean :completed

      t.timestamps
    end
  end
end
