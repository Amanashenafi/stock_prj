class Product < ApplicationRecord
  has_many :stock
  validates :code, presence:true, uniqueness:true
  validates :name, presence:true, uniqueness:true
end
