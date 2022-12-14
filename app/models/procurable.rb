class Procurable < ApplicationRecord
    belongs_to :phase
    belongs_to :division
    # scope to get all procurables by phase id(s)     
    scope :grouped_by_phase_id, -> (phase_ids) { 
        Procurable.where('phase_id IN (?)', phase_ids).includes(:phase).group_by { |p| p.phase.name.to_s } 
    }
end
