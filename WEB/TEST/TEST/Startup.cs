using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(TEST.Startup))]

namespace TEST
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            /*app.Run( context =>
            {
                context.Response.ContentType = "text/html";
                return context.Response.WriteAsync(HtmlText);
            });*/
            app.Use<MainPage>();
        }

        private const string HtmlText = "<html>" +
                                            "<head>" +
                                                "<title>TestOwinApplication</title>" +
                                            "</head>" +
                                            "<body>" +
                                                "<h1>Hello world!</h1>" +
                                                "<font size=6>This is test string </font><br>" +
                                                "<font size=4>And this <font color=RED><b>RED WORDS </b></font>and <font color=GREEN><i>GREEN WORDS</i></font></font>" +
                                            "</body>" +
                                        "</html>";
    }
}