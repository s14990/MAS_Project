class Group < ApplicationRecord
    has_many :medications, dependent: :destroy

    validates :purpose, presence: true
end
