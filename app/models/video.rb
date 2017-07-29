class Video < ApplicationRecord
  belongs_to :career

  validates :name, presence: true
  validates :url, presence: true
end
