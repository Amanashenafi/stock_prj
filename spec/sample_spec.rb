require "rails_helper"

RSpec.describe "sample" do

  # it "runs rspec successfully" do
  #   expect(true).to be_truthy
  # end
  # it "adds numbers in an array" do
  #   x = [1,2,3,4,5]
  #   result = x.sum
  #   expect(result).to eq(15)
  # end
  it "Should validate code can't be null" do
    unit = build(:unit,code:nil)
    expect(unit).not_to be_valid
  end

  it "Should validate name can't be null" do
    unit = build(:unit,name:nil)
    expect(unit).not_to be_valid
  end

  it "Should validate unit_type can't be null" do
    unit = build(:unit, unit_type:nil)
    expect(unit).not_to be_valid
  end

  it "Should validate that code is unique" do
    unit1 = create(:unit)
    unit2 = build(:unit,code:unit1.code)
    expect(unit2).not_to be_valid
  end

  it "Should validate that name is unique" do
    unit1 = create(:unit)
    unit2 = build(:unit,name:unit1.name)
    expect(unit2).not_to be_valid
  end

  it "Should validate that unit_type should be weight,volume or count" do
    unit1 = build(:unit, unit_type:"some text")
    expect(unit1).not_to be_valid
  end

end
