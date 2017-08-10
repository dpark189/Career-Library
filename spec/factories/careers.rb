FactoryGirl.define do
  factory :career do
    sequence(:name) {|n| "career name #{n}"}
  end
end
