class Stock < ApplicationRecord
  belongs_to :product
  belongs_to :unit
  belongs_to :store
  validates :quantity, presence:true
  validates :quantity, numericality: {greater_than_or_equal_to:0}
end
