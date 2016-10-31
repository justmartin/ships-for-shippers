class BoatsJob < ApplicationRecord
  belongs_to :boat
  belongs_to :job

  def self.no_assignment_for?(boat_id)
    where(boat_id: boat_id).empty?
  end
end
