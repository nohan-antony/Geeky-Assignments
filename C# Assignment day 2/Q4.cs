using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q4
{
    internal class Program
    {
        //Reverse of a number
        static void Main(string[] args)
        {
            Console.WriteLine("Input the number to Reverse");
            int n=int.Parse(Console.ReadLine());
            int reverseNumber = 0;
            while(n>0)
            {
                reverseNumber=reverseNumber*10+n%10;
                n = n / 10;
            }
            Console.WriteLine(reverseNumber);
            Console.ReadLine();
        }
    }
}
