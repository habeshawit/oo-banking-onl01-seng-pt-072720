class BankAccount
  attr_accessor :name, :balance,:status
  # attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 100
    @status = "Open"
  end
  
end
