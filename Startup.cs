using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MedicareHopitalLimite_Iqramul.Startup))]
namespace MedicareHopitalLimite_Iqramul
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
