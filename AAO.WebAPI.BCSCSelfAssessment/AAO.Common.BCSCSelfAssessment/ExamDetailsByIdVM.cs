using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AAO.Common.BCSCSelfAssessment
{
    public class ExamDetailsByIdVM
    {
        public int ExamId { get; set; }

        public string ExamName { get; set; }

        public DateTime? StartDate { get; set; }

        public DateTime? EndDate { get; set; }

        public int NoofQuestions { get; set; }

        public bool ExamTimeType { get; set; }

        public bool ExamAnswerToShow { get; set; }

        public bool ShowDetailedAnswers { get; set; }

        public bool ShowAnsAfterExamCompletion { get; set; }
    }
}
