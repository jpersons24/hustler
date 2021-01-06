class Task < ApplicationRecord
    belongs_to :user
    belongs_to :worker

    validates :description, :cost, presence: true
    validates :description, length: {minimum: 20}
end
