FactoryGirl.define do
  factory :career do
    sequence(:name) {|n| "career name #{n}"}
    sequence(:id) {|n| "#{n}"}
  end
end
