using Microsoft.Owin;
using Owin;
using System.Web.Http;

[assembly: OwinStartup(typeof(TEST.Startup))]

namespace TEST
{

    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            var config = new HttpConfiguration();
            config.Routes.MapHttpRoute("default", "{controller}");

            app.UseWebApi(config);
            app.Use<MainPage>();
        }
    }
}