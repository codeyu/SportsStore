using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace SportsStore.Models {

    public class AppIdentityDbContext : IdentityDbContext<ApplicationUser> {
        public AppIdentityDbContext(DbContextOptions<AppIdentityDbContext> options)
            : base(options) 
            { 
                Database.EnsureCreated();
            }
    }
}
