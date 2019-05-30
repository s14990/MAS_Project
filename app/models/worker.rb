class Worker < ApplicationRecord

    has_many :practices,dependent: :destroy
    has_many :branches, through: :practices


    def count_salary(hours: 100)
        salary
    end
    
    validates :name, presence: true, uniqueness: true
    validates :salary, numericality: { greater_than_or_equal_to: 0 }

end
