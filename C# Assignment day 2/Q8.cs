using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization.Formatters;
using System.Text;
using System.Threading.Tasks;

namespace Q8
{
    internal class Program
    {
        static bool checkPrime(int n)
        {
            if(n == 0) return false;
            if(n == 1) return false;
            if(n == 2) return true;
            for(int i = 2; i < n; i++)
            {
                if (n%i==0)
                {
                    return false;
                }
                
            }
            return true;
        }
       

        static void Main(string[] args)
        {
            //Print all prime numbers below 100
            for(int i = 0;i<100;i++)
            {
                bool isprime = checkPrime(i);
                if(isprime) { Console.WriteLine(i); }
            }
            
            Console.ReadLine();

        }
    }
}
