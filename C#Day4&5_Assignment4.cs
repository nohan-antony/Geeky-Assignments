using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Animal1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Cat cat = new Cat();
            cat.MakeSound();
            Dog dog = new Dog();
            dog.MakeSound();
            Bird bird = new Bird();
            bird.MakeSound();
            Console.ReadLine();
        }
    }

    abstract class Animal
    {
        public abstract string Name { get; }
        public abstract string Sound { get; }

        public abstract void MakeSound();

    }
     class Cat : Animal
    {
        public override string Name {  get { return "Cat"; } }
        public override string Sound => "Meaw meav ";
        public override void MakeSound() {
            Console.WriteLine(Sound+Sound);

        }
    }
    class Dog : Animal { public override string Name { get { return "Dog"; } }
        public override string Sound
        {
            get
            {
                return "Bow Bow ";
            }
        }
        public override void MakeSound() { 
        Console.WriteLine(Sound+Sound);}
    }
    class Bird :Animal { public override string Name { get {return "Bird"; } }

        
        public override string Sound
        {
            get { return "croo croo "; }
        }
        public override void MakeSound() { Console.WriteLine(Sound+Sound); }

    }

}
