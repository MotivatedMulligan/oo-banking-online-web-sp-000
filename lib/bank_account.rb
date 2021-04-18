class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

def initialize(name, balance=1000, status="open")
  @name = name
  @balance = balance
  #@balance = 1000
  @status = status
  #@status = "open"
end
  def deposit(money)
    self.balance += money.to_i
    #can deposit money into its account
  end

  def display_balance
    "Your balance is $#{@balance}."
    #@@account
     #can display its balance
  end
  def valid?
    balance > 0 && status == "open"
    #self.status == 'open' && self.balance #? true : false
    #if ((status = "open") == (@balance > 0))
    #true
  #else
    #false
     #is valid with an open status and a balance greater than 0
  #end
end
  def close_account
    #can close its account
    self.status = "closed"
  end
end
