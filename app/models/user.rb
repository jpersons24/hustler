class User < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :workers, through: :tasks
    has_many :reviews, dependent: :destroy
    has_many :workers, through: :reviews

    has_secure_password
end
