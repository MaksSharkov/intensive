namespace TEST
{
    using System;
    using System.Net.Http.Formatting;
    using System.Net.Http.Headers;

    public class TextFormatter : BufferedMediaTypeFormatter
    {
        public TextFormatter ()
        {
            SupportedMediaTypes.Add(new MediaTypeHeaderValue("text/plain"));
        }

        public override bool CanReadType(Type type)
        {
            return false;
        }

        public override bool CanWriteType(Type type)
        {
            return false;
        }
    }
}