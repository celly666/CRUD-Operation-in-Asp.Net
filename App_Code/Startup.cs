using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CRUDProject.Startup))]
namespace CRUDProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
