using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q7
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Check prime number
            Console.WriteLine("Enter number to check prime");
            int number=int.Parse(Console.ReadLine());
            if (number == 0 || number==1 || number==2) {
                Console.WriteLine("Neither prime nor composite");
            }
            bool PrimeFlag = true;
            for (int i = 2; i < number/2; i++) {
            if(number%i == 0) {
                    Console.WriteLine("Not prime");
                    PrimeFlag=false;
                    break;
                        
                        }
                    }
            if(PrimeFlag) { Console.WriteLine("Number is prime"); }
            Console.ReadLine();
        }
    }
}
