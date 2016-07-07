using System;
using Microsoft.Owin.Hosting;
 
namespace TEST
{
    class Program
    {
        static void Main(string[] args)
        {
            const string uri = "http://localhost:8081/";
 
            using(WebApp.Start<Startup>(uri))
            {
                Console.WriteLine("Server started");
                Console.ReadKey();
                Console.WriteLine("Server stoped");
            }
        }
    }
}