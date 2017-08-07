class Video < ApplicationRecord
  belongs_to :career

  validates :name, presence: true
  validates :embbed_code, presence: true
end
