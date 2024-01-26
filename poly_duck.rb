class Bank
    def deposit(account)
      account.deposit(1000)
    end
  end
  
  class SavingsAccount
    def deposit(amount)
      puts "Depositing #{amount} into savings account."
    end
  end
  
  class CurrentAccount
    def deposit(amount)
      puts "Depositing #{amount} into current account."
    end
  end
  
  
  bank = Bank.new
  
  savings_account = SavingsAccount.new
  current_account = CurrentAccount.new
  
  bank.deposit(savings_account)
  bank.deposit(current_account)
  