class CreateWorkers < ActiveRecord::Migration[6.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :photo
      t.text :bio

      t.timestamps
    end
  end
end
