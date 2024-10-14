
using CardManagement;
using CardManagement.Models;
using CardManagement.Models.Models;




class Program
{


    static void Main()
    {

        using (var context = new CardManagementContext())
        {
            int getCustId()
            {
                return context.Customers.Any() ?
                        context.Customers.OrderByDescending(x => x.id).Select(x => int.Parse(x.id.Substring(4))).First() + 1
                            : 1001;
            }

            int getAccId()
            {
                return context.Account.Any() ?
                    context.Account.OrderByDescending(x => x.id).Select(x => int.Parse(x.id.Substring(3))).First() + 1
                    : 1001;
            }

            int getTranId()
            {
                return context.Transactions.Any() ?
                    context.Transactions.OrderByDescending(x => x.id).Select(x => int.Parse(x.id.Substring(3))).First() + 1
                    : 1001;
            }


            // Create a customer
            var customer = new Customer(getCustId())
            {
                CustomerName = "Alice Johnson",
                CustomerAddress = "789 Oak Avenue",
                Email = "alice.johnson@example.com",
                PhoneNumber = "555-765-4321"
                Accounts = new List<Account>()
            };
            context.Customers.Add(customer);
            context.SaveChanges();
            // Add accounts

            var account1 = new Account(getAccId())
            {
                AccountNumber = "123456789",
                Type = Account.AccountType.Debit,
                Balance = 2500.0

            };

            customer.Accounts.Add(account1);
            context.SaveChanges();
            

            var account2 = new Account(getAccId())
            {
                AccountNumber = "123477789",
                Type = Account.AccountType.Credit,
                Balance = 250.00
            };
            customer.Accounts.Add(account2);
            context.SaveChanges();

          



            // Display customer details and accounts
            customer.Display();
            customer.AccountDisplay();

            // Create transactions
            var depositTransaction = new Transaction(getTranId())
            {
                Type = Transaction.TransactionType.Deposit,
                Amount = 500.0,
                Description = "savings",
                Accounts = account1
            };

            account1.AddTransaction(depositTransaction);
            context.Transactions.Add(depositTransaction);
            context.SaveChanges();


            var withdrawalTransaction = new Transaction(getTranId())
            {
                Type = Transaction.TransactionType.Withdrawal,
                Amount = 100.0,
                Description = "ATM Withdrawal",
                Accounts = account1 
            };

            // Add transactions to account and update balances
            account1.AddTransaction(withdrawalTransaction);
            context.Transactions.Add(withdrawalTransaction);


            context.SaveChanges();

            customer.AccountDisplay();

            // List transactions for account1
            account1.ListTransactions();



            var service = new Actions();

            service.DisplayCustomer(context, "Cust1002");



            service.CheckAccount(context, "Acc1005");

        }
    }
}
