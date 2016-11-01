class Job < ApplicationRecord
  has_many :boats_jobs
  has_many :boats, through: :boats_jobs

  validates :title, uniqueness: :true
  validates :cost, numericality: { greater_than: 1000 }
  validates :description, length: { minimum: 50 }
  validates :date, presence: true
  validates :title, presence: true
  validates :date, presence: true
  validates :containers_needed, presence: true

end
