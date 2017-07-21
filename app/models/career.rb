class Career < ApplicationRecord
  has_many :videos

    validates  :name, presence: true
    validates  :description
    validates  :salary
    validates  :education_req
    validates  :outlook

end
