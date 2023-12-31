class Store < ApplicationRecord
  has_many :stock
  validates :code, presence:true, uniqueness:true
  validates :name, presence:true, uniqueness:true
  validates :address, uniqueness:true

end
