using Microsoft.EntityFrameworkCore;
using System;

namespace CardDb
{
    class Program
    {
        static void Main(string[] args)
        {
            using (var context = new CardDbContext())
            {
                context.Database.EnsureCreated();

                // Create a new customer
                var customer = new Customer("John Doe", "123 Elm St", "johndoe@email.com", "123-456-7890");
                context.Customer.Add(customer);

                // Create the first account for the customer
                var account1 = new Account
                {
                    AccountNumber = "1234567890",
                    Type = AccountType.Debit,
                    Balance = 1000.00,
                    Customer = customer
                };
                context.Account.Add(account1);

                // Create the second account for the customer
                var account2 = new Account
                {
                    AccountNumber = "9876543210",
                    Type = AccountType.Credit,
                    Balance = 500.00,
                    Customer = customer
                };
                context.Account.Add(account2);

                // Create transactions for both accounts
                var transaction1 = new Transaction
                {
                    TransactionDate = DateTime.Now,
                    Type = TransactionType.Deposit,
                    Amount = 200.00,
                    Description = "Salary Deposit",
                    Account = account1
                };
                context.Transaction.Add(transaction1);

                var transaction2 = new Transaction
                {
                    TransactionDate = DateTime.Now,
                    Type = TransactionType.Withdrawal,
                    Amount = 100.00,
                    Description = "ATM Withdrawal",
                    Account = account2
                };
                context.Transaction.Add(transaction2);

                // Save changes to the database
                context.SaveChanges();

                Console.WriteLine("Customer, accounts, and transactions saved successfully.");
            }
        }
    }
}
