using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AAO.DTO.BCSCSelfAssessment
{
    public class ReshareRequestDTO
    {
        public int ExamId { get; set; }

        public string Emailids { get; set; }

        public string CreatorEmailId { get; set; }

        public int CreatorUserId { get; set; }

        public bool Force { get; set; }

        public DateTime? StartDateUTC { get; set; }

        public DateTime? EndDateUTC { get; set; }

        //public string StartDateUTC { get; set; }
        //public string EndDateUTC { get; set; }
    }
}