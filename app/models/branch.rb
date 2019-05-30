class Branch < ApplicationRecord
    has_many :practices, dependent: :destroy
    has_many :workers, through: :practices
    has_many :orders, dependent: :destroy

    KINDS = %w[apteka punkt].freeze

    validates :kind,presence: true, inclusion: { in: KINDS }
    

end
