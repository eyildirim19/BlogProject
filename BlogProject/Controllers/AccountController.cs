using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BlogProject.Models;
using BlogProject.Models.Identity;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace BlogProject.Controllers
{
    public class AccountController : Controller
    {
        UserManager<AppUser> userManager; // kullanıcı yönetimi  UserTablo
        RoleManager<AppRole> roleManager; // role yönetimi // Role tablosu
        SignInManager<AppUser> signInManager; // oturum yönetimi...
        public AccountController(UserManager<AppUser> um, RoleManager<AppRole> rl, SignInManager<AppUser> sm)
        {
            userManager = um; // intance runtime'da startup dosyasındaki ConfigureServices meotundan alınarak otomatik olarak buraya gönderilir.. Bunun nedeni .net core'da dependency injection ve IOC mantığı vardır.. 
            roleManager = rl;
            signInManager = sm;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Login()
        {
            return View();
        }

        public async Task<IActionResult> Login(AccountUserVM model)
        {
            AppUser user = new AppUser();
            user.Email = model.Email;
            user.UserName = model.Email;

            var result = await signInManager.PasswordSignInAsync(user, model.Password, false, false);

            if (result.Succeeded) // Başarılıysa...
            {
                return RedirectToAction("Index", "Home"); // anasayfaya yönlendir..
            }
            else
            {
                ViewData["Mesaj"] = "Hatalı kullancıadı veya şifre.";
            }

            return View();
        }

        public IActionResult Register()
        {
            return View();
        }


        [HttpPost]
        public async Task<IActionResult> Register(AccountUserVM model)
        {

            // Rol ekleyeceğiz..
            if (!await roleManager.RoleExistsAsync("user")) // user rolü var mı?? veritabanından kontrol eder...
            {
                AppRole role = new AppRole();
                role.Name = "user";

                await roleManager.CreateAsync(role); // veritabanına rolü ekle.... //AspNetRoles tablosuna kayıt atar..
            }

            AppUser user = new AppUser();
            user.UserName = model.Email;
            user.Email = model.Email;
            user.FullName = model.FullName;

            var result = await userManager.CreateAsync(user, model.Password); // kullanıcıyı veritbanaına ekle... //AspNetUsers tablosuna kayıt atar..

            if (result.Succeeded) // kayıt yapıldıysa....
            {
                var roleResult = await userManager.AddToRoleAsync(user, "user"); // Kullanıcıya rol ekle.... //AspNetUserROles tablosuna kayıt atar...

                // View'a mesaj gönderiyoruz..
                // ViewData => Controllerden view'a veya viewdan view veri göndermek için kullanılır..Sadece bir sonraki request için çalışır..
                ViewData["Mesaj"] = "Kayıt İşleminiz Başarılı.";
            }
            else
            {
                ViewData["Mesaj"] = "Kayıt işleminiz yapılamadı.. Lütfen bilgilerinizi kontrol ediniz...";
            }
            return View();
        }


    }
}