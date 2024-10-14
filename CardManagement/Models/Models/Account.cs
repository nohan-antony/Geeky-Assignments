
namespace CardManagement.Models
{
    public class Account
    {
        public string id { get; private set; }
        public string AccountNumber { get; set; }
        public enum AccountType
        {
            Debit,
            Credit
        }
        public AccountType Type { get; set; }
        public double Balance { get; set; }

        public List<Transaction> Transactions { get; set; }

        public Account() { }
        public Account(int AccountId)
        {
            this.id = "Acc" + AccountId.ToString();
            Transactions = new List<Transaction>();
        }



        public void AddTransaction(Transaction transaction)
        {
            Transactions.Add(transaction);

            switch (transaction.Type)
            {
                case Transaction.TransactionType.Deposit:
                    Balance += transaction.Amount;
                    break;

                case Transaction.TransactionType.Withdrawal:
                    Balance -= transaction.Amount;
                    break;

                case Transaction.TransactionType.Transfer:
                    Balance -= transaction.Amount;
                    break;

            }

        }

        public void ListTransactions()
        {
            Console.WriteLine($"Transactions for Account ID: {id}, Account Number: {AccountNumber}");
            if (Transactions.Count == 0)
            {
                Console.WriteLine("No transactions found.");
                return;
            }

            foreach (var transaction in Transactions)
            {
                Console.WriteLine($" - Transaction ID: {transaction.id}, Date: {transaction.TransactionDate}, Type: {transaction.Type}, Amount: {transaction.Amount}, Description: {transaction.Description}");
            }
        }
    }
}