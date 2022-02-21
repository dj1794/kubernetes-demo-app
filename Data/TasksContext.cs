using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using FinalDeployment.Domain;

namespace FinalDeployment.Data
{
    public class TasksContext:DbContext
    {
           public TasksContext(DbContextOptions<TasksContext> options) : base(options)
        {
        }

        public DbSet<FinalDeployment.Domain.Task> Tasks { get; set; }
              protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<FinalDeployment.Domain.Task>().ToTable("Task");
        }
    }
}