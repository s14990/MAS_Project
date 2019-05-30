class Wholesaler < ApplicationRecord
    has_many :wholesale_purchases,dependent: :destroy
end
