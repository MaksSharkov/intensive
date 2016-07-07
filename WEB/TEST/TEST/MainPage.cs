namespace TEST
{
    using System.Threading.Tasks;
    using Microsoft.Owin;

    public class MainPage : OwinMiddleware
    {
        public MainPage(OwinMiddleware next)
            : base(next)
        {
        }

        public override async Task Invoke(IOwinContext context)
        {
            if (context.Request.Uri.AbsolutePath.Equals("/"))
            {
                context.Response.WriteAsync("Hello world!");
            }
        }
    }
}