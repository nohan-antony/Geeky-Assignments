using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Q9
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Fibonacci series
            Console.WriteLine("Enter the number of terms needed in the series");
          int n=int.Parse(Console.ReadLine());
            int[] arr= new int[n];
            arr[0] = 0;
            arr[1] = 1;
            for(int i = 2; i < n; i++)
            {
                arr[i] = arr[i - 1] + arr[i-2];
            }
            for(int i=0; i < n; i++)
            {
                Console.WriteLine(arr[i]);
            }
            Console.ReadLine();

        }
    }
}
