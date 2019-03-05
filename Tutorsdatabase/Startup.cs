using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Tutorsdatabase.Startup))]
namespace Tutorsdatabase
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }

       
    }
}
