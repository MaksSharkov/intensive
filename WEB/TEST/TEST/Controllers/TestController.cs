namespace TEST.Controllers
{
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.Http;

    public class TestController : ApiController
    {
        public IEnumerable<int> GetValues()
        {
            return Enumerable.Range(0, 10);
        }
    }
}
