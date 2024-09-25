using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Large amount 3 numbers
            Console.WriteLine("Input First number");
            int num1 = int.Parse(Console.ReadLine());

            Console.WriteLine("Enter the secound number");
            int num2= int.Parse(Console.ReadLine());

            Console.WriteLine("Enter the third number");
            int num3= int.Parse(Console.ReadLine());

            int largest = 0;
            if (num1 > num2) {
                largest = num1;
            }
            else
            {
                largest = num2;
            }
            if (num3 > largest)
            {
                largest = num3;
            }

            Console.WriteLine(largest + " is the largest amoung the three");
            Console.ReadLine();
        }
    }
}
