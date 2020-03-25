class CreateJob < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :position, presence: true, length: { maximum: 50 }
    validates :position, presence: true, length: { maximum: 50 }
    validates :annual_salary, presence: true, length: { maximum: 50 }
    validates :contract_time, presence: true, length: { maximum: 50 }

end
