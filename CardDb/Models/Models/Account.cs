using System.Collections.Generic;

namespace Models.Models
{
    public class Account
    {
        private static int lastId = 1001;
        public string Id { get; private set; }

        public string AccountNumber { get; set; }
        public AccountType Type { get; set; }
        public double Balance { get; set; }

        // Foreign key to link account with a customer
        public string CustomerId { get; set; }
        public Customer Customer { get; set; }

        // An account can have multiple transactions
        public List<Transaction> Transactions { get; set; }

        public Account()
        {
            this.Id = $"Acc{lastId++}";
            this.Transactions = new List<Transaction>();
        }
    }

    public enum AccountType
    {
        Debit,
        Credit
    }
}
