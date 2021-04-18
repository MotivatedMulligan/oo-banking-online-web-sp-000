class Transfer
attr_accessor :sender, :receiver, :amount, :status, :balance
#attr_reader :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    status = "pending"
    @status = status
    @amount = amount
  end
  def valid?
    @sender.valid? && @receiver.valid?
  end

def execute_transaction
  if valid? && sender.balance > amount && self.status == "pending"
    sender.withdrawal(self.amount)
    receiver.deposit(self.amount)
    self.status = "complete"
  else
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end
  # if @sender.balance < @amount
  #    @status = "rejected"
  #    puts "Transaction rejected. Please check your account balance."
  #
  # elsif @status == "complete"
  #       puts "Transaction was already executed"
  # else
  #   @sender.deposit( @amount * -1 )
  #   @receiver.deposit( @amount )
  #   @status = "complete"
  #   #puts "Transaction was already executed"
  # end
#end

  def reverse_transfer
  #if valid? && receiver.balance > amount && self.status == "complete"
      if  @status == "complete"
      @sender.balance += amount
      @receiver.balance -= amount
      @status == "reversed"
      else
      @status == "rejected"
    end
end
 end
