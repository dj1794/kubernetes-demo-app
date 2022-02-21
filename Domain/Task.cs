using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace FinalDeployment.Domain
{
      public class Task
    {
        [Key]
        public int Id { get; set; }
        public DateTime AddedOn { get; set; }
        public string Description { get; set; }
        public bool IsComplete { get; private set; }
        public void MarkAsComplete()
        {
            IsComplete = true;
        }
        public void MarkAsIncomplete()
        {
            IsComplete = false;
        }
    }
}