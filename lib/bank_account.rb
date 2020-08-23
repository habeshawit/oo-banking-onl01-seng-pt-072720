class BankAccount
  attr_accessor :name,:balance,:status
  
  def initialize(name,balance=100,status=open)
    @name = name
    @balance = balance
    @status = status
  end
end
