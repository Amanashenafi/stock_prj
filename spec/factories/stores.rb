FactoryBot.define do
  factory :store do
    code { Faker::Alphanumeric.alpha}
    name { Faker::Name.name }
    address { Faker::Address.full_address }
  end
end
