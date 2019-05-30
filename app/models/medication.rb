class Medication < ApplicationRecord
    belongs_to :manufacturer
    belongs_to :group
    has_many :batches, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :eligible_for_sale, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }
end
