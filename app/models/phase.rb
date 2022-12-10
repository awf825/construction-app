class Phase < ApplicationRecord
    belongs_to :project
    has_many :procurables
end
