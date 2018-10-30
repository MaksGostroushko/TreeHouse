class BankAccount
  attr_reader :name

  def initialize(name)
    @name = name
    @transaction = []
    add_transaction("Beginning Balance", 0)
  end

  def credit(description, amount)
    add_transaction(description, amount)
  end

  def debit(description, amount)
      add_transaction(description, -amount)
    end

  def add_transaction(description, amount)
    @transaction.push(description: description, amount: amount)
  end
end

bank_account = BankAccount.new("Max")
bank_account.credit("Salary", 100)
bank_account.debit("Groceries", 40)
puts bank_account.inspect
