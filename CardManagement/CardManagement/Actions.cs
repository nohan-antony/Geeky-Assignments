
using CardManagement.Models.Models;

namespace CardManagement
{
    public class Actions
    {
        public void DisplayCustomer(CardManagementContext context, string checkCustId)
        {
            var tempCustomer = context.Customers.FirstOrDefault(x => x.id == checkCustId);

            if (tempCustomer != null)
            {
                tempCustomer.Display();
            }
            else
            {
                Console.WriteLine("Customer not found.");
            }
        }

        public void CheckAccount(CardManagementContext context, string checkAccId)
        {
            var tempAccount = context.Account.FirstOrDefault(x => x.id == checkAccId);

            if (tempAccount != null)
            {
                Console.WriteLine($" - Account ID: {tempAccount.id}, " +
                                  $"Account Number: {tempAccount.AccountNumber}, " +
                                  $"Type: {tempAccount.Type}, " +
                                  $"Balance: {tempAccount.Balance}");
            }
            else
            {
                Console.WriteLine("Account not found.");
            }
        }
    }
}
