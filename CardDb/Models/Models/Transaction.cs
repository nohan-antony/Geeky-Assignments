using System;

namespace Models.Models
{
    public class Transaction
    {
        private static int lastId = 1001;
        public string Id { get; private set; }

        public DateTime TransactionDate { get; set; }
        public TransactionType Type { get; set; }
        public double Amount { get; set; }
        public string Description { get; set; }

        // Foreign key to link transaction with an account
        public string AccountId { get; set; }
        public Account Account { get; set; }

        public Transaction()
        {
            this.Id = $"Txn{lastId++}";
        }
    }

    public enum TransactionType
    {
        Deposit,
        Withdrawal,
        Transfer
    }
}
