class WholesalePurchase < ApplicationRecord
    has_many :batches, dependent: :destroy
    belongs_to :wholesaler

    validates :sum , numericality: { greater_than_or_equal_to: 0 }
end
