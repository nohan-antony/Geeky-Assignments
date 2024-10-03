using System;
namespace circle
{

    class Program
{
    public static void Main(string[] args) {
        Triangle triangle = new Triangle(3, 5, 4);
        Rectangle rectangle = new Rectangle(5, 4);
        Circle circle = new Circle(7);
    }
}

    public interface IShape
    {
        public double CalculateArea();
        public double CalculatePerimeter();
    }
    public class Rectangle : IShape
    {
        double Length;
        double Breadth;
        public Rectangle(double length, double breadth)
        {
            this.Length = length;
            this.Breadth = breadth;
        }
          double IShape.CalculateArea() 
        {
            return Length*Breadth;
        }

         double IShape.CalculatePerimeter()
        {
            return (2*(Length+Breadth));
        }
    }
    public class Circle : IShape
    {
        double radius;
        public Circle(double radius)
        {
            this.radius = radius;
        }
        double IShape.CalculateArea()
        {
            return ((22/7)*radius*radius);
        }

        double IShape.CalculatePerimeter()
        {
            return (2 * (22/7)*radius);
        }
    }
    public class Triangle : IShape {
     
            double Side1;
            double Side2;
        double Side3;
            public Triangle(double side1 , double side2,double side3)
            {
              Side1 = side1;
            Side2 = side2;
            Side3 = side3;
            }
            double IShape.CalculateArea()
            {
            double S=(Side1+Side2+Side3)/2;
            double area=Math.Sqrt(S*(S-Side1)*(S-Side2)*(S-Side3));
            return area;
            }

            double IShape.CalculatePerimeter()
            {
            return (Side1+Side1 + Side2 + Side3);
            
        }
    }
    
}