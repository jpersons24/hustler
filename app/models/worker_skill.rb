class WorkerSkill < ApplicationRecord
    belongs_to :worker
    belongs_to :skill

    validates :skill_id, uniqueness: { scope: :worker_id }

end
