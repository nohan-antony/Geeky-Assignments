


namespace CardManagement.Models
{
    public class Customer
    {
        public string id { get; private set; }
        public string CustomerName { get; set; }
        public string CustomerAddress { get; set; }

        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public List<Account> Accounts { get; set; }

        public Customer()
        { }

        public Customer(int CustIdCount)
        {
            this.id = "Cust" + CustIdCount.ToString();
            Accounts = new List<Account>();
        }


        public void Display()
        {
            Console.WriteLine($"Customer Id: {id}, " +
                $"Customer Name: {CustomerName}, " +
                $"Address: {CustomerAddress} ," +
                $"Email: {Email}, " +
                $"PhoneNumber : {PhoneNumber}");

        }

        public void AccountDisplay()
        {
            Console.WriteLine("Accounts:");
            foreach (var account in Accounts)
            {
                Console.WriteLine($" - Account ID: {account.id}, " +
                    $"Account Number: {account.AccountNumber}, " +
                    $"Type: {account.Type}, " +
                    $"Balance: {account.Balance}");
            }
        }
    }
}