using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;

namespace Q12
{
    internal class Program
    {
        /*
character   Sports
c           Cricket
f           Football
h           Hockey
t           Tennis
b           Badminton    */
        static void Main(string[] args)
        {
        switchLabel:
            Console.WriteLine("Enter the charecter to match the sports");
            char c=char.Parse(Console.ReadLine());
            string sports=null;
            
            switch (c)
            {
                case 'c':
                    sports = "Cricket";
                    break;
                case 'f':
                    sports = "Football";
                    break;
                case 'h':
                    sports = "hockey";
                    break;
                case 't':
                    sports = "tennis";
                    break;
                case 'b':
                    sports = "badminton";
                    break;
                default:
                    Console.WriteLine("Invalid input, please try again");
                    goto switchLabel;
                    

            }
            Console.WriteLine("The corrsponding sports is "+sports);
            Console.ReadLine();
        }
    }
}
