FactoryBot.define do
  factory :task do
    name { FFaker::Lorem.word }
    deadline { Time.zone.now.next_day.to_date }
    project
  end
end
