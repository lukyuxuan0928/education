FactoryBot.define do
  factory :student do
    name { Faker::Hipster.sentence}
    description { Faker::Hipster.paragraph}
    course { Faker::Hipster.sentence}
  end
end

FactoryBot.define do
  factory :user do
    email "example@google.com"
    password { Faker::Hipster.sentence}
  end
end
