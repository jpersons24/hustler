class Worker < ApplicationRecord
    has_many :tasks
    has_many :users, through: :tasks
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    has_one :schedule, dependent: :destroy
    has_many :worker_skills
    has_many :skills, through: :worker_skills

    has_secure_password
end
