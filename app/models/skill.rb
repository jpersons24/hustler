class Skill < ApplicationRecord
    has_many :worker_skills
    has_many :workers, through: :worker_skills
    has_many :tasks

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: {minimum: 3}

end
