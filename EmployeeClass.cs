using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assgnment3_Q1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Employee emp1=new Employee(1, "John Doe", 15000);
            Employee emp2 = new Employee(3, "Mary James", 15000);
            Employee emp3 = new Employee(2, "Liam Smith", 20000);

            emp1.display();
            emp2.display();
            emp3.display();



            Console.ReadLine();
        }
    }
    //class file

    internal class Employee
    {
        public int id { get; private set; }
        string name { get; set; }
        double salary { get; set; }
        string emoloyee_type { get; set; }

        public Employee(int id1, string name1, int salary1)
        {
            id = id1;
            name = name1;
            salary = salary1;
            emoloyee_type = "Contract";

        }
        public void display()
        {
            Console.WriteLine("Id :" + id);
            Console.WriteLine("Employee Name :" + name);
            Console.WriteLine("Salary :" + salary);
        }
    }


}