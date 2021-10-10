using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BlogProject.Models.Entities;
using BlogProject.Models.Identity;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace BlogProject
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;

        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //
            // AddRazorRuntimeCompilation(); =>metodu i�in Microsoft.AspNetCore.Mvc.Razor.RuntimeCompilation packagesini uygulaman�za dahil etmeniz gerekiyor. Tabi bunu yaparken framework versiyonuzu kontrol edeniz. indiridi�iniz package framework destekli olmal�. 
            services.AddControllersWithViews().AddRazorRuntimeCompilation();

            // json serialize i�lemlerinde json property nameleri yaz�m stilini camel case olarak uygulamas�n...
            services.AddMvc().AddJsonOptions(opt =>
            {
      opt.JsonSerializerOptions.PropertyNamingPolicy = null;
            });

            services.AddDbContext<BlogDbContext>(option =>
            {
                option.UseSqlServer(Configuration.GetConnectionString("BlogConnection"));
            });

            services.AddIdentity<AppUser, AppRole>().AddEntityFrameworkStores<BlogDbContext>();

            // identity configuration...kullan�c� �ifresinin format�n� belirledik...
            services.Configure<IdentityOptions>(conf =>
            {
                conf.Password.RequireDigit = false;
                conf.Password.RequireNonAlphanumeric = false;
                conf.Password.RequiredLength = 3;
                conf.Password.RequireLowercase = false;
                conf.Password.RequireUppercase = false;
            });

            // oturum bilgilerini d�zenleyelim..
            services.ConfigureApplicationCookie(conf =>
            {
                conf.LoginPath = "/Account/Login"; // action pathleri
                conf.LogoutPath = "/Account/LogOut"; // action pathleri
                conf.AccessDeniedPath = "/AccessDenied"; // action pathleri /yetkisi olmayan yere gitmeye �al��t���nda AcceessDenied controlleri�na y�nlendir..
            });

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
            }
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication(); //oturum aktif hale getiriyoruz..

            app.UseAuthorization(); // role aktif hale getiriyoruz...

            app.UseEndpoints(endpoints =>
            {
                //endpoints.MapControllerRoute(
                // name: "areas",
                // pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}"
                // );

                endpoints.MapControllerRoute(
                  name: "default",
                  pattern: "{controller=Home}/{action=Index}/{id?}");

            });
        }
    }
}
