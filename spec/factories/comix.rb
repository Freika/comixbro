FactoryGirl.define do
  factory :comix do
    title 'Spider-man'
    year 2009
    language 'ru'
    association :publisher, factory: :publisher
  end
end
