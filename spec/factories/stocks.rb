FactoryBot.define do
  factory :stock do
    product { create(:product) }
    unit { create(:unit) }
    store { create(:store) }
    quantity { 100 }
  end
end
