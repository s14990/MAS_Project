class Asystent < Worker 
        
    attribute :bonus, :integer, default: 100
    attribute :pay, :integer, default: 10
    
    def count_salary(hours: 100)
        salary+bonus+pay*hours
    end

    validates :pay, numericality: { greater_than_or_equal_to: 0 }
    validates :bonus, numericality: { greater_than_or_equal_to: 0 }

end