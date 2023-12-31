FactoryBot.define do
  factory :product do
    code { Faker::Alphanumeric.alpha(number:8) }
    name { Faker::Name.name }
  end
end
