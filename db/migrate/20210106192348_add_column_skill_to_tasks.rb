class AddColumnSkillToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :skill, :string
  end
end
