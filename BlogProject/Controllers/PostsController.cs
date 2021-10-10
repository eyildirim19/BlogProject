using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using BlogProject.Models.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using BlogProject.Models.Identity;
using BlogProject.Models;

namespace BlogProject.Controllers
{
    public class PostsController : Controller
    {

        BlogDbContext dbContenxt;
        UserManager<AppUser> userManager;
        public PostsController(BlogDbContext _blogDbContext, UserManager<AppUser> _userManager)
        {
            dbContenxt = _blogDbContext;
            userManager = _userManager;
        }

        // KategoriID gönderecğeiz..
        public IActionResult Index(int ID)
        {
            var result = dbContenxt.Contents.Include(c => c.Comments).Where(c => c.CategoryID == ID).ToList();
            return View(result);
        }

        // ContentID'yi gönderecğeiz...
        public IActionResult Detail(int ID)
        {
            var result = dbContenxt.Contents
                    .Include(c => c.Comments) // contentlerin commentlerini sorguya dahil ediyoruz 
                    .ThenInclude(c => (c as Comment).User) // commentlerin userlarını sorguya dahil ediyoruz...
                    .Include(c => c.User) // contentlerin userlarını sorguya dahil ediyoruz...
                    .Where(c => c.ID == ID)
                    .FirstOrDefault();


            // alt yorumlar ve yoruma yapılan yorumları buluyoruz.... CommentID null değilse bu bir alt yorumdur...
            ViewData["SubComments"] = dbContenxt.Comments.Where(c => c.CommentID != null && c.ContentID == ID).ToList();

            try
            {

                //.FirstOrDefault(c => c.ID == ID); // ID'si gönderilen Contenti seçiyoruz..

                // okuma sayısını arttırılaım...
                result.ViewCount = result.ViewCount + 1;
                dbContenxt.SaveChanges(); // değişikliği kaydet...
            }
            catch (Exception)
            {
            }

            return View(result);
        }

        [HttpPost]
        public async Task<IActionResult> AddComment(string text, int contentId)
        {
            JsonResponse response = new JsonResponse();
            try
            {
                // kullanıcı bulunur...
                var user = await userManager.FindByNameAsync(User.Identity.Name);

                Comment comment = new Comment();
                comment.UserID = user.Id;
                comment.Text = text;
                comment.CreDate = DateTime.Now;
                comment.ContentID = contentId; // hangi makaleye ??
                comment.IsApprove = false; // ekranda yayınlanmaması için..

                dbContenxt.Comments.Add(comment); // yorumu ekle
                dbContenxt.SaveChanges(); // değişikliği kaydet...

                response.Code = OperationStatu.Success;
                response.Message = "Tebrikler yorumunuz eklendi. Yönetici tarafından onaylandıktan sonra yayınlanacaktır";
            }
            catch (Exception)
            {
                response.Code = OperationStatu.Error;
                response.Message = "Yorum yaparken bir hata oluştu. Lütfen tekar deneyin";
            }
            return Json(response);
        }

        [HttpPost]
        public async Task<IActionResult> AddCommentCevap(string text, int contentId, int parentCommentId)
        {
            JsonResponse response = new JsonResponse();
            try
            {
                // kullanıcı bulunur...
                var user = await userManager.FindByNameAsync(User.Identity.Name);

                Comment comment = new Comment();
                comment.UserID = user.Id;
                comment.Text = text;
                comment.CreDate = DateTime.Now;
                comment.CommentID = parentCommentId; // hangi yoruma ??
                comment.ContentID = contentId; // hangi makaleye???
                comment.IsApprove = false; // ekranda yayınlanmaması için..

                dbContenxt.Comments.Add(comment); // yorumu ekle
                dbContenxt.SaveChanges(); // değişikliği kaydet...

                response.Code = OperationStatu.Success;
                response.Message = "Tebrikler yorumunuz eklendi. Yönetici tarafından onaylandıktan sonra yayınlanacaktır";
            }
            catch (Exception)
            {
                response.Code = OperationStatu.Error;
                response.Message = "Yorum yaparken bir hata oluştu. Lütfen tekar deneyin";
            }
            return Json(response);
        }
    }
}