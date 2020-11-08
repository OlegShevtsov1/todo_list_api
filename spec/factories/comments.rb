FactoryBot.define do
  factory :comment do
    description { FFaker::Lorem.phrases }
    task
  end
end
