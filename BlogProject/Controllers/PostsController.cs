using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using BlogProject.Models.Entities;

namespace BlogProject.Controllers
{
    public class PostsController : Controller
    {

        BlogDbContext dbContenxt;
        public PostsController(BlogDbContext _blogDbContext)
        {
            dbContenxt = _blogDbContext;
        }

        // KategoriID gönderecğeiz..
        public IActionResult Index(int ID)
        {
            var result = dbContenxt.Contents.Where(c => c.CategoryID == ID).ToList();

            return View(result);
        }

        // ContentID'yi gönderecğeiz...
        public IActionResult Detail(int ID)
        {
            var result = dbContenxt.Contents.FirstOrDefault(c => c.ID == ID); // ID'si gönderilen Cntent

            return View(result);
        }
    }
}