using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q5
{
    internal class Program
    {
        //sum of digits of number
        static void Main(string[] args)
        {
            Console.WriteLine("Input the number to find the sum of digits");
            int n = int.Parse(Console.ReadLine());
            int sum = 0;
            while (n > 0)
            {
                sum = sum  + n % 10;
                n = n / 10;
            }
            Console.WriteLine(sum);
            Console.ReadLine();
        }
    }
}
