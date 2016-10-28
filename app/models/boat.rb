class Boat < ApplicationRecord
  belongs_to :user
  has_many :boats_jobs
  has_many :jobs, through: :boats_jobs

  has_attached_file :avatar, :styles =>
  { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, 
  :content_type => /\Aimage\/.*\Z/
  
  validates :name, uniqueness: true
end
