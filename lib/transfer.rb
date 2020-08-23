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
    if !self.valid? 
      return "Transaction rejected. Please check your account balance."
    elsif @status != "complete"
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
    end
    
  end 
  
end
