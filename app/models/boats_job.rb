class BoatsJob < ApplicationRecord
  belongs_to :boat
  belongs_to :job

  def self.no_boat_assignment_for?(boat_id)
    where(boat_id: boat_id).empty?
  end

  def self.no_job_assignment_for?(job_id)
    where(job_id: job_id).empty?
  end
end
