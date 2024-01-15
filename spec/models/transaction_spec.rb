require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it{should validate_presence_of(:transaction_date)}
  it{should validate_presence_of(:transaction_type)}
  it{should validate_presence_of(:status)}
  it{should validate_presence_of(:quantity)}
  it{should belong_to(:stock)}
  it{should validate_numericality_of(:quantity).is_greater_than(0)}
end
