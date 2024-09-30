using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace calculator
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Create a Calculator application, with four methods to perform add, diff, mult and div.
            //Each method will accept two double inputs and return the result double value.
          
            bool flag=true;
            do { 
                Console.WriteLine("Enter the First digit");
            int firstNumber = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the secound number");
            int secoundNumber = int.Parse(Console.ReadLine());
                OperationsCalc calculator = new OperationsCalc(firstNumber,secoundNumber);
            Console.WriteLine("Enter the operation to perform");
            char Operator = char.Parse(Console.ReadLine());
            
                switch (Operator)
                {
                    case '+':
                        Console.WriteLine(calculator.sum1);
                        break;
                    case '-':
                        Console.WriteLine(calculator.subtract);
                        break;
                    case '*':
                        Console.WriteLine(calculator.multiply);
                        break;
                    case '/':
                        Console.WriteLine(calculator.divide);
                        break;
                    


                }
                Console.WriteLine("Do you want to continue Y/N");
                char option=char.Parse(Console.ReadLine());
                flag = (option == 'Y');

                
            }while (flag);

        }
    }
}


////class file
///

    internal class OperationsCalc
    {
        double firstno { get; set; }
        double secoundno {  get; set; }
       public OperationsCalc(double firstno1, double secondno1)
        {
            this.firstno = firstno1;
            this.secoundno = secondno1;

        }
        public double sum1
        {
            get
            {
                return firstno+secoundno;
            }
        }
        public double subtract
        {
            get
            {
                return firstno - secoundno;
            }
        }
        public double multiply
        {
            get
            {
                return firstno * secoundno;

            }
        }
        public double divide
        {
            get
            {
                return firstno / secoundno;
            }
        }
    }
}
