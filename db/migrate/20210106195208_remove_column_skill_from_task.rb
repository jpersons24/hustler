class RemoveColumnSkillFromTask < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :skill
  end
end
