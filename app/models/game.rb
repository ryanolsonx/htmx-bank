class Game < ApplicationRecord
    validates :bank, presence: true
end
