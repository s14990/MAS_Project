class Pharmaceut < Worker
    attribute :premija, :integer, default: 10
    attribute :pay, :integer, default: 20

    def count_salary(hours: 100)
        salary+(premija+pay)*hours
    end

    validates :pay, numericality: { greater_than_or_equal_to: 0 }
    validates :premija, numericality: { greater_than_or_equal_to: 0 }
end