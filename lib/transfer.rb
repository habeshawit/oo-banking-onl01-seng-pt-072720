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
    if self.valid? && @status != "complete" && @sender.balance > @amount
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    
    # if @sender.valid? == false
    #   @status="rejected"
    #   return "Transaction rejected. Please check your account balance."
    # elsif @status !="rejected" && @status != "complete" 
    #   @sender.balance -= @amount 
    #   @receiver.balance += @amount 
    #   @status = "complete"
    # end
    
  end 
  
end
