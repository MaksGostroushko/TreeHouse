class BankAccount
  def initialize(name)
    @name = name
    @transaction = []
  end
end

bank_account = BankAccount.new("Max")
puts bank_account.inspect
