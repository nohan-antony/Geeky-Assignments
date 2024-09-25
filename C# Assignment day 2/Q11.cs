using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q11
{
    internal class Program
    {
        //tax calculation
       
 /* 
     Amount                          Tax %
Less than 10000                      5
Between 10000 and 15000              7.5
Between 15000 and 20000              10
Between 20000 and 25000              12.5
Above 25000                          15

*/
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the amount");
            int amount=int.Parse(Console.ReadLine());
            float tax = 0;
            float taxAmount = 0;
            if (amount < 10000)
            {
                tax = 5;

            }
            else if (amount >= 10000 && amount < 15000)
            {
                tax = 7.5f;
            }
            else if (amount >= 15000 && amount < 20000)
            {
                tax = 10;
            }

            else if (amount >= 20000 && amount < 25000)
            {
                tax = 12.5f;
            }
            else
            {
                tax = 15;
            }
            Console.WriteLine("the tax percentage is " + tax);
            taxAmount = amount * tax / 100;
            Console.WriteLine("The tax amount is "+ taxAmount);
            Console.ReadLine();
        }
    }
}
