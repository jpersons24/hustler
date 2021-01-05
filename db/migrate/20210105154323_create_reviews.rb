class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :worker_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
