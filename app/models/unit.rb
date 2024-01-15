class Unit < ApplicationRecord
  has_many :stock
  WEIGHT = "weight".freeze
  VOLUME = "volume".freeze
  COUNT = "count".freeze
  UNIT_TYPES = [WEIGHT,VOLUME,COUNT]
  validates :code, :name, :unit_type, presence:true
  validates :code, :name, uniqueness:true
  validates :unit_type, inclusion:{in:UNIT_TYPES}
  #validates :unit_type, inclusion:{in:["weight","volume","count"]}
end

