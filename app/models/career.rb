class Career < ApplicationRecord

  mount_uploader :career_image, CareerImageUploader
  has_many :videos
  validates :name, presence: true

  def self.search(search)
    if search
      careers = Career.all
      search_results = careers.where(['name ILIKE ?', "%#{search}%"])
    else
    end
  end
end
