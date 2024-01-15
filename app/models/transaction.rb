class Transaction < ApplicationRecord
  enum :transaction_type, {incoming:0, outgoing:1}
  enum :status, {draft:0, commited:1}
  belongs_to :stock
  validates :transaction_date, :transaction_type, :status, :quantity, presence:true
  validates :quantity, numericality:{greater_than:0}
end
