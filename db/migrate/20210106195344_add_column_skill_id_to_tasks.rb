class AddColumnSkillIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :skill_id, :integer
  end
end
