FactoryGirl.define do
  factory :career do
    sequence(:name) {|n| "career#{n}"}
  end
end
