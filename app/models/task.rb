class Task < ApplicationRecord
    validates :status, inclusion: { in: [0, 1], message: "%{value} is not a valid status" }
    def toggle_status
        self.status = status.zero? ? 1 : 0
        save
    end
end