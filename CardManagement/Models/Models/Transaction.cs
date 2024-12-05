namespace CardManagement.Models
{
    public class Transaction
    {
        public string id { get; private set; }
        public DateTime TransactionDate { get; set; }

        public enum TransactionType
        {
            Deposit, Withdrawal, Transfer
        }
        public TransactionType Type { get; set; }
        public double Amount { get; set; }
        public string Description { get; set; }
        public Account Accounts { get; set; }

        public Transaction()
        { }

        public Transaction(int TransactId)
        {
            this.id = "Txn" + TransactId.ToString();

            TransactionDate = DateTime.Now;

        }


    }
}