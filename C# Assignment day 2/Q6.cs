using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q6
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Input the number to find sum of sqaures of digits");
            int n = int.Parse(Console.ReadLine());
            int sumSq = 0;
            while (n > 0)
            {
                sumSq = sumSq  + (n % 10)* (n % 10);
                n = n / 10;
            }
            Console.WriteLine(sumSq);
            Console.ReadLine();

        }
    }
}
