class Task < ApplicationRecord
    belongs_to :user
    belongs_to :worker
    belongs_to :skill

    validates :description, :cost, presence: true
    validates :description, length: {minimum: 20}
end
