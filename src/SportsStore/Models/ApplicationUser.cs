using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace SportsStore.Models
{
  public class ApplicationUser : IdentityUser
  {
      public ApplicationUser() : base()
      {
          
      }
      public ApplicationUser(string userName) : base(userName)
      {

      }
  }
}