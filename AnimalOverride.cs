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
              Cat cat  = new cat("kitty");
              Dog dog  = new dog("Rocky");
              Bird  bird  = new bird("Ace");

            cat.display();
            cat.Sound();

            dog.display();
            dog.Sound();

            bird.display();
            bird.Sound();
            

            Console.ReadLine(); 

           
        }
    }
    public class AnimalClass
    {
        public string name { get; set; }

        public AnimalClass(string Name){
            name = Name;
            }
        public virtual void Sound() {
            Console.WriteLine("Inside animal sound");
        }
        public void display()
        {
            Console.WriteLine("This is " + name);
        }
    }
    public class Cat: AnimalClass {
        public Cat(string name):base(name)
        {

        }
        public override void sound()
        {
            Console.WriteLine(name + " makes meaww meaww");
        }
    }
    public class dog : AnimalClass
    {
        public Dog(string name) : base(name)
        {

        }
        public override void Sound()
        {
            Console.WriteLine(name + " makes boww boww");
        }
    }

    public class Bird : AnimalClass
    {
        public Bird(string name) : base(name)
        {

        }
        public override void Sound()
        {
            Console.WriteLine(name + " makes oow oow");
        }
    }
}
