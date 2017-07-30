FactoryGirl.define do
  factory :video do
    sequence(:name) { |n| "sample video #{n}"}
    url 'pVsGODYj7HI'
    sequence(:career_id) { |n| "#{n}"}
  end
end
