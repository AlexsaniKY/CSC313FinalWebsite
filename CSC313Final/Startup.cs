using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CSC313Final.Startup))]
namespace CSC313Final
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
