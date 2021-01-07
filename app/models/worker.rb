class Worker < ApplicationRecord
    has_many :tasks
    has_many :users, through: :tasks
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    has_many :worker_skills
    has_many :skills, through: :worker_skills

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :name, length: {minimum: 3}
    validates :bio, length: {maximum: 250}

    
end
