class Game < ApplicationRecord
    validates :bank, presence: true
    validates :turns_occurred, presence: true
end
