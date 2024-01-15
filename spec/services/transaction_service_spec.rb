Rspec.describe TransactionService do
  let(:service) { TransactionService.new }
  
  describe "#commit" do
    it "raises error if transaction is already commited" do
      transaction = create(:transaction, status:Transaction.statuses[:commited])
      error = "The transaction is already commited"
      expect{service.commit(transaction)}.to raise_error(StrandardError, error)
    end
  end
end
