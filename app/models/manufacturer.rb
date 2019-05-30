class Manufacturer < ApplicationRecord
    has_many :medications, dependent: :destroy

    validates :name, presence: true, uniqueness: true
    validates :has_licence, presence: true
end
