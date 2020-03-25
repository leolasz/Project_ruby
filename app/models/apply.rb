class Apply < ApplicationRecord
    validates :name, presence: true, length: { maximum: 50 }
    validates :age, presence: true, length: { maximum: 3 }
    validates :position, presence: true, length: { maximum: 50 }
    validates :phone, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 50 }
    
end
