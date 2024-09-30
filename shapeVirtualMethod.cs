using System;


namespace ShapeQ
{
    internal class Program
    {
        static void Main(string[] args)
        {

            /*
             Create a class Shape with a virtual method CalculateArea() that takes no parameters. Create derived classes Circle, 
            Rectangle, and Triangle that override CalculateArea() to calculate the area of their respective shapes.
             */

            Circle circle = new Circle();
            circle.CalculateArea();
            Rectangle rectangle = new Rectangle();
            rectangle.CalculateArea();
            Triangle triangle= new Triangle();
            triangle.CalculateArea();
        }
    }
    internal class shape
    {
        string name;
       
        public virtual void CalculateArea()
        {
            Console.WriteLine("Inside Shape class virtual method");
        }
    }
    internal class Circle : shape {

        public override void CalculateArea()
        {
            Console.WriteLine("Enter the Radius");
            float radius=float.Parse(Console.ReadLine());
            float area=radius*radius*(22/7);
            Console.WriteLine("Area of the circle is :" + area);
        }
    
    }
    internal class Rectangle : shape
    {

        public override void CalculateArea()
        {
            Console.WriteLine("Enter the Length");
            int Length = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the Breadth");
            int Breadth = int.Parse(Console.ReadLine());
            double area = Length * Breadth ;
            Console.WriteLine("Area of the Rectangle is :" + area);
        }

    }

    internal class Triangle : shape
    {

        public override void CalculateArea()
        {
            Console.WriteLine("Enter the Heigth");
            int Height = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the Base Length");
            int Base = int.Parse(Console.ReadLine());
            double area = Height *Base*1/2;
            Console.WriteLine("Area of the triangle is :" + area);
        }

    }

}
