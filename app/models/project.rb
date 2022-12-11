class Project < ApplicationRecord
    belongs_to :user
    belongs_to :account
    has_many :phases
end
