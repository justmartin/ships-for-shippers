class Job < ApplicationRecord
  has_many :boats_jobs
  has_many :boats, through: :boats_jobs
end
