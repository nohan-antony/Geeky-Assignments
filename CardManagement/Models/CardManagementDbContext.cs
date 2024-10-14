
using Microsoft.EntityFrameworkCore;


namespace CardManagement.Models.Models
{

    public class CardManagementContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=localhost,1431;Database=dbCard;User Id=sa;Password=pass@123;TrustServerCertificate=true");

        }

        public DbSet<Customer> Customers { get; set; }
        public DbSet<Account> Account { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
    }

}

