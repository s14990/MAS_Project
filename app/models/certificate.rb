class Certificate < ApplicationRecord

    validates :short_name, presence: true,length: { in: 2..5 }
    validates :full_name, presence: true

end
