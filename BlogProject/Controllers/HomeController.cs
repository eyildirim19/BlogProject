using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using BlogProject.Models;
using BlogProject.Models.Entities;
using Microsoft.AspNetCore.Mvc;

namespace BlogProject.Controllers
{
    public class HomeController : Controller
    {
        BlogDbContext dbContext;
        public HomeController(BlogDbContext _dbContenxt)
        {
            dbContext = _dbContenxt;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult PostSubscribe(string semail1)
        {
            JsonResponse response = new JsonResponse();
            response.Code = OperationStatu.Success;
            response.Message = "Tebrik ederiz. Artı sizde bizim bir abonemizsiniz...";

            try
            {

                Subscribe sb = new Subscribe();
                sb.EmailAdress = semail1;
                sb.CreDate = DateTime.Now;

                dbContext.Subscribe.Add(sb);
                dbContext.SaveChanges();

            }
            catch (Exception ex)
            {
                response.Code = OperationStatu.Error;
                response.Message = "Bir hata oluştu. Lütfen tekrar deneyiniz";
            }

            return Json(response);
        }
    }
}