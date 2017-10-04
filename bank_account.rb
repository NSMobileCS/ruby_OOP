class BankAccount
    @@account_list = []
    def initialize(initial_checking=0, initial_savings=0, interest_rate=0.01)
        set_checking_balance(initial_checking)
        set_savings_balance(initial_savings)
        set_interest_rate(interest_rate)
        set_account_number
    end

    def self.total_accounts_in_service
        @@account_list.length
    end

    def account_information
        puts "Account #, total funds, checking balance, savings balance, interest rate:"
        get_account_num
        total_avail_funds
        get_checking_balance
        get_savings_balance
        puts @interest_rate
    end

    def get_account_num
        puts @account_number
        @account_number
    end

    def get_checking_balance
        puts @checking_balance
        @checking_balance
    end

    def get_savings_balance
        puts @savings_balance
        @savings_balance
    end

    def deposit_to_checking(n)
        set_checking_balance(@checking_balance + n) unless n < 0
    end

    def deposit_to_savings(n)
        set_savings_balance(@savings_balance + n) unless n < 0
    end

    def withdraw_from_checking(n)
        if n > @checking_balance
            return "INSUFFICIENT FUNDS!!(oooooohh)"
        end
        if n < 0
            return "[error code #42:] YOU CANNOT PUNK THIS BANK WITH NEGATIVE WITHDRAWALS!;)"
        end
        @checking_balance -= n
        n
    end

    def withdraw_from_savings(n)
        if n > @savings_balance
            return "INSUFFICIENT FUNDS!!(oooooohh)"
        end
        if n < 0
            return "[error code #42:] YOU CANNOT PUNK THIS BANK WITH NEGATIVE WITHDRAWALS!;)"
        end
        @savings_balance -= n
        n 
    end

    def total_avail_funds
        puts @savings_balance + @checking_balance
    end

    private
    def set_checking_balance(n)
        @checking_balance = n
    end

    def set_savings_balance(n)
        @savings_balance = n
    end

    def set_interest_rate(n)
        @interest_rate = n
    end

    def set_account_number
        num = Random.rand(1000000000)
        while @@account_list.include?(num)
            num = Random.rand(1000000000)
        end
        @account_number = num
        @@account_list.push(num)
    end
end

# ACCOUNT TESTS - LOOK GOOD SO FAR
# bobsaccount = BankAccount.new(2000,5000)
# puts bobsaccount.get_account_num
# bobsaccount.deposit_to_checking(100)
# bobsaccount.get_checking_balance
# puts bobsaccount.get_account_num
# bobsaccount.deposit_to_savings(150)
# puts bobsaccount.withdraw_from_savings(-250)
# puts bobsaccount.withdraw_from_savings(50)
# bobsaccount.get_savings_balance
# bobsaccount.total_avail_funds
# alicesacct = BankAccount.new(0,0,0.25)
# payment = bobsaccount.withdraw_from_savings(1337)
# alicesacct.deposit_to_checking(payment)
# puts "# of acc'ts:"
# puts BankAccount.total_accounts_in_service
# puts 'Bob:'
# bobsaccount.account_information
# puts 'Alice: '
# alicesacct.account_information

