class User < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :workers, through: :tasks
    has_many :reviews, dependent: :destroy
    has_many :workers, through: :reviews
    
    validates :name, :username, :password, presence: true
    validates :name, :username, uniqueness: true
    validates :name, length: {minimum: 3}
    validates :bio, length: {maximum: 50}
    validates :password, length: { in: 5..20}
    
    has_secure_password

    
end
