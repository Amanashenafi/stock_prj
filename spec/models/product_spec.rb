require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it{is_expected.to validate_presence_of(:code)}
  it{is_expected.to have_many(:stock)}
end
