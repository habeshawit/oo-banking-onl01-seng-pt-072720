class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    1.times do @sender.balance -= @amount
    1.times do @receiver.balance += @amount
    @status = "complete"
    
  end 
  
end
