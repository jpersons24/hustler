class Review < ApplicationRecord
    belongs_to :user
    belongs_to :worker
    
    validates :title, :content, presence: true
    validates :title, length: {maximum: 50}
    validates :content, length: {minimum: 30}
end
