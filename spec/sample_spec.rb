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
  # it{is_expected.to validate_presence_of(:code)}

  it "Should validate unit:code can't be null" do
    unit = build(:unit,code:nil)
    expect(unit).not_to be_valid
  end

  it "Should validate unit:name can't be null" do
    unit = build(:unit,name:nil)
    expect(unit).not_to be_valid
  end

  it "Should validate unit:unit_type can't be null" do
    unit = build(:unit, unit_type:nil)
    expect(unit).not_to be_valid
  end

  it "Should validate that unit:code is unique" do
    unit1 = create(:unit)
    unit2 = build(:unit,code:unit1.code)
    expect(unit2).not_to be_valid
  end

  it "Should validate that unit:name is unique" do
    unit1 = create(:unit)
    unit2 = build(:unit,name:unit1.name)
    expect(unit2).not_to be_valid
  end

  it "Should validate that unit:unit_type should be weight,volume or count" do
    unit1 = build(:unit, unit_type:"some text")
    expect(unit1).not_to be_valid
  end


  #########################################################################

  it "Should validate that Product:code can't be null" do
    product1 = build(:product, code:nil)
    expect(product1).not_to be_valid
  end
  it "Should validate that Product:code is unique" do
    product1 = create(:product)
    product2 = build(:product,code:product1.code)
    expect(product2).not_to be_valid
  end
  it "Should validate that Product:name can't be null" do
    product = build(:product,name:nil)
    expect(product).not_to be_valid
  end
  it "Should validate that Product:name is unique" do
    product1 = create(:product)
    product2 = build(:product,name:product1.name)
    expect(product2).not_to be_valid
  end


##################################################################################3


  it "Should validate that Store:code can't be null" do
    store = build(:store, code:nil)
    expect(store).not_to be_valid
  end
  it "Should validate that Store:code is unique" do
    store1 = create(:store)
    store2 = build(:store,code:store1.code)
    expect(store2).not_to be_valid
  end
  it "Should validate that Store:name can't be null" do
    store = build(:store,name:nil)
    expect(store).not_to be_valid
  end
  it "Should validate that Store:name is unique" do
    store1 = create(:store)
    store2 = build(:store,name:store1.name)
    expect(store2).not_to be_valid
  end
  it "Should validate that Store:address is unique" do
    store1 = create(:store)
    store2 = build(:store,address:store1.address)
    expect(store2).not_to be_valid
  end


###############################################################################3


  it "Should validate that Stock:quantity is not null" do
    stock = build(:stock,quantity:nil)
    expect(stock).not_to be_valid
  end
  it "Should validate that Stock:quantity can't be non-numeric or negative" do
    stock1= build(:stock,quantity:"hello")
    stock2 = build(:stock,quantity:-2.0)
    expect(stock1).not_to be_valid
    expect(stock2).not_to be_valid
  end
  it "Should validate that Stock belongs to Product " do
    product = create(:product)
    stock = create(:stock,product:product)
    expect(stock.product).to equal(product)
  end
  it "Should validate that Stock belongs to Unit " do
    unit = create(:unit)
    stock = create(:stock,unit:unit)
    expect(stock.unit).to equal(unit)
  end
  it "Should validate that Stock belongs to Store " do
    store = create(:store)
    stock = create(:stock,store:store)
    expect(stock.store).to equal(store)
  end
  it "Should validate that Prodcut has many stock" do
    product = create(:product)
    stock1 = create(:stock,product:product)
    stock2 = create(:stock,product:product)
    expect(product.stock).to include(stock1,stock2)
  end
  it "Should validate that Store has many stock" do
    store = create(:store)
    stock1 = create(:stock,store:store)
    stock2 = create(:stock,store:store)
    expect(store.stock).to include(stock1,stock2)
  end
  it "Should validate that Unit has many stock" do
    unit = create(:unit)
    stock1 = create(:stock,unit:unit)
    stock2 = create(:stock,unit:unit)
    expect(unit.stock).to include(stock1,stock2)
  end










end
