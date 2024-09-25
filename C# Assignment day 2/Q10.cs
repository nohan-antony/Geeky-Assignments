using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q10
{
    internal class Program
    {
        //check palindrome
        static void Main(string[] args)
        {
            Console.WriteLine("Enter the Word to check palindrome");
            string str=Console.ReadLine();
            int n=str.Length;
            bool b=false;
            for (int i=0; i<n; i++)
            {
                if (char.ToLower(str[i]) != char.ToLower(str[n - 1 - i])){
                    b= true;
                    break;

                }
            }

            if (!b)
            {
                Console.WriteLine("Palindrome");
            }
            else
            {
                Console.WriteLine("Not Palindrome");
            }
            Console.ReadLine();

        }
    }
}
