FactoryGirl.define do
  factory :video do
    sequence(:name) { |n| "sample video #{n}"}
    embbed_code 'pVsGODYj7HI'
    sequence(:career_id) { "1"}
  end
end
