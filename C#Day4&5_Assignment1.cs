
using System;


namespace EmpManagement
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Employee emp1 = new Employee("John Doe", 15000);
            Employee emp2 = new Employee("Liam Smith", 20000);
            Employee emp3 = new Employee("Mary James", 15000);
            Employee.DisplayEmp();
            Employee emp4 = new Employee(1007, "Nohan", 30000);
            emp4.Display();


            Console.ReadLine();

        }
    }
    public class Employee
    {
        public string Id { get; private set; }
        public string Name { get; set; }
        public double Salary { get; set; }
        public string EmployeeType { get; set; }
        private static int Empcount = 1000;
        public Employee(string name, double salary)
        {

            Empcount++;
            Id = "EMP" + Empcount.ToString();
            Name = name;
            Salary = salary;
            EmployeeType = "Contract";
        }
        public static void DisplayEmp()
        {
            Console.WriteLine("No of employess :" + (Empcount-1000));
        }
        public Employee(int id) { 
        Id="Emp"+id.ToString();
        }
        public Employee(int id,string name):this(id) { 
            Name = name;
        
        }
        public Employee(int id, string name, double salary):this(id,name)  {
        Salary=salary;
        }
        //this method use to chain constructors
        public void Display()
        {
            Console.WriteLine("ID :"+Id);
            Console.WriteLine("Name :" + Name);
            Console.WriteLine("Salary: "+Salary);
        }
    }
}
