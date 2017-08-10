class Career < ApplicationRecord

  mount_uploader :career_image, CareerImageUploader
  has_many :videos
  validates :name, presence: true


end
