class Skill < ApplicationRecord
    has_many :worker_skills
    has_many :workers, through: :worker_skills

    validates :name, :category, presence: true
    validates :name, uniqueness: true
    validates :name, length: {minimum: 5}

end
