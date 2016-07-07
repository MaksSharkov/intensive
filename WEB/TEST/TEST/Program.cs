using System;
using Microsoft.Owin.Hosting;
 
namespace TEST
{
    class Program
    {
        static void Main(string[] args)
        {
            const string uri = "http://localhost:8081/";

            var bar = new Bar { Foo = new Foo() };
            bar.Foo.Change(5);
            Console.WriteLine(bar.Foo.Value);
            using(WebApp.Start<Startup>(uri))
            {
                Console.WriteLine("Server started");
                Console.ReadKey();
                Console.WriteLine("Server stoped");
            }
        }

        public struct Foo
        {
            public int Value;
            public void Change(int newValue)
            {
                Value = newValue;
            }
        }
        public class Bar
        {
            public Foo Foo { get; set; }
        }
    }
}