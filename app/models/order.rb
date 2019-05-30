class Order < ApplicationRecord
    belongs_to :branch
    has_many :batches

    
    
end
