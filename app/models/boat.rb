class Boat < ApplicationRecord
  belongs_to :user
  has_many :boats_jobs
  has_many :jobs, through: :boats_jobs
end
