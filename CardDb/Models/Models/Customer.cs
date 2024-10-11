using System.Collections.Generic;

namespace Models.Models
{
    public class Customer
    {
        private static int lastId = 1001;
        public string Id { get; private set; }

        public string CustomerName { get; set; }
        public string CustomerAddress { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }

        // A customer can have multiple accounts
        public List<Account> Accounts { get; set; }

        public Customer(string customerName, string customerAddress, string email, string phoneNumber)
        {
            this.Id = $"Cust{lastId++}";
            this.CustomerName = customerName;
            this.CustomerAddress = customerAddress;
            this.Email = email;
            this.PhoneNumber = phoneNumber;
            this.Accounts = new List<Account>();
        }
    }
}
