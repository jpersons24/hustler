class Worker < ApplicationRecord
    has_many :tasks
    has_many :users, through: :tasks
    has_many :reviews, dependent: :destroy
    has_many :users, through: :reviews
    has_many :worker_skills
    has_many :skills, through: :worker_skills

    validates :name, :username, :password, presence: true
    validates :name, :username, uniqueness: true
    validates :name, length: {minimum: 3}
    validates :bio, length: {maximum: 250}
    validates :age, numericality: { greater_than_or_equal_to: 18, less_than_or_euqal_to: 120}

    has_secure_password
end
