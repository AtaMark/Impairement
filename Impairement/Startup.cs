using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Impairement.Startup))]
namespace Impairement
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
