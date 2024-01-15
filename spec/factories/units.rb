FactoryBot.define do
  factory :unit do
    code { Faker::Alphanumeric.alpha(number:2) }
    name { Faker::Lorem.word}
    unit_type { Unit::WEIGHT}
  end
end

