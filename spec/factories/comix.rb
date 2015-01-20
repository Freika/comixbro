FactoryGirl.define do
  factory :comix do
    title 'Spider-man'
    year 2009
    language 'ru'

    trait :with_publisher do
      association :publisher, factory: :publisher
    end

  factory :comix_with_publisher, traits: [:with_publisher]
  end
end
