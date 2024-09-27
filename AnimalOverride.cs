using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Animal
{
    internal class Program
    {
        static void Main(string[] args)
        {
            cat Cat = new cat("kitty");
            dog Dog = new dog("Rocky");
            bird Bird = new bird("Ace");

            Cat.display();
            Cat.sound();

            Dog.display();
            Dog.sound();

            Bird.display();
            Bird.sound();
            

            Console.ReadLine(); 

           
        }
    }
    public class animal1
    {
        public string name { get; set; }

        public animal1(string Name){
            name = Name;
            }
        public virtual void sound() {
            Console.WriteLine("Inside animal sound");
        }
        public void display()
        {
            Console.WriteLine("This is " + name);
        }
    }
    public class cat: animal1 {
        public cat(string name):base(name)
        {

        }
        public override void sound()
        {
            Console.WriteLine(name + " makes meaww meaww");
        }
    }
    public class dog : animal1
    {
        public dog(string name) : base(name)
        {

        }
        public override void sound()
        {
            Console.WriteLine(name + " makes boww boww");
        }
    }

    public class bird : animal1
    {
        public bird(string name) : base(name)
        {

        }
        public override void sound()
        {
            Console.WriteLine(name + " makes oow oow");
        }
    }
}
