FactoryBot.define do
  factory :transaction do
    transaction_date { Date.current }
    transaction_type { 0 }
    status { 0 }
    stock { stock }
    quantity { 10 }
  end
end
