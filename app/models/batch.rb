class Batch < ApplicationRecord
    belongs_to :order
    belongs_to :wholesale_purchase
    belongs_to :medication


end
