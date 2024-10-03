namespace Mathop
{
    public class Arthmeticop
    {
        public double sum(double X, double Y)
        {
            return X + Y;
        }

        public double sub(double X, double Y)
        {
            return X - Y;
        }
    }
    public class RelationalOperation
    {
        public bool GreaterThan(double X, double Y) { return X >= Y; }
        public bool LessThan(double X, double Y) { return (X <= Y); }

    }
}



////////////////////////////


using Mathop;
using System;
namespace Calculator_
{
    class Calculate
    {
        static void Main(string[] args)
        {
            Arthmeticop arthmeticop = new Arthmeticop();
            RelationalOperation relationalOperation = new RelationalOperation();
            double firstNo = 10;
            double secNo = 15;
            Console.WriteLine(arthmeticop.sum(firstNo, secNo));
            Console.WriteLine(arthmeticop.sub(firstNo, secNo));
            Console.WriteLine(relationalOperation.GreaterThan(firstNo,secNo));
            Console.WriteLine(relationalOperation.LessThan(firstNo,secNo));
            Console.ReadLine();
        }
    }
}
