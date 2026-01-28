namespace AAO.WebAPI.BCSCSelfAssessment.Controllers
{
    using System.Collections.Generic;
    using System.Web.Http;
    using AAO.BAL.BCSCSelfAssessment;
    using AAO.Common.BCSCSelfAssessment;
    using DTO.BCSCSelfAssessment;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web.Http;

    public class ExamHistoryController : ApiController
    {
        [Route("api/ExamHistory/ExamHistoryDetails")]
        [HttpPost]
        public List<ExamHistoryDTO> ExamHistoryDetails(ExamHistoryDTO examhistory)
        {
            return ExamHistoryBL.ExamHistoryDetails(examhistory);
        }

        [Route("api/ExamHistory/SharedExamHistoryDetails")]
        [HttpPost]
        public List<ExamHistoryDTO> SharedExamHistoryDetails(ExamHistoryDTO examhistory)
        {
            return ExamHistoryBL.SharedExamHistoryDetails(examhistory);
        }

        [Route("api/ExamHistory/DeleteExamHistoryDetails")]
        [HttpPost]
        public void DeleteExamHistoryDetails(ExamHistoryDTO examhistory)
        {
            ExamHistoryBL.DeleteExamHistoryDetails(examhistory);
        }

        [Route("api/ExamHistory/GetPdfDetails")]
        [HttpPost]
        public PdfDetailsDataVM GetPdfDetails(ExamHistoryDTO examhistory)
        {
          return ExamHistoryBL.GetPdfDetails(examhistory);
        }

        [Route("api/ExamHistory/ResetExam")]
        [HttpGet]
        [HttpPost]
        public int ResetExam(ExamCountOnExamTypeVM examCount)
        {
            return ExamHistoryBL.ResetExam(examCount.UserId);
        }

        /*[Route("api/ExamHistory/ReshareExam")]
        [HttpPost]
        public IHttpActionResult ReshareExam(ReshareRequestDTO req)
        {
            if (req == null || req.ExamId <= 0) 
                return BadRequest("Invalid payload.");
            var emails = (req.Emailids ?? "").Split(',').Select(x => x.Trim()).Where(x => !string.IsNullOrEmpty(x)).Distinct(StringComparer.OrdinalIgnoreCase).ToList();
            var inserted = ExamHistoryBL.ReshareSharedExamMulti(req.ExamId, req.CreatorUserId, req.CreatorEmailId, emails, req.Force, req.StartDateUTC, req.EndDateUTC);
            return Ok(new { inserted });
        }*/

        [Route("api/ExamHistory/ReshareExam")]
        [HttpPost]
        public IHttpActionResult ReshareExam(ReshareRequestDTO req)
        {
            try
            {
                if (req == null || req.ExamId <= 0)
                    return BadRequest("Invalid payload.");

                var emails = (req.Emailids ?? "")
                    .Split(',')
                    .Select(x => x.Trim())
                    .Where(x => !string.IsNullOrEmpty(x))
                    .Distinct(StringComparer.OrdinalIgnoreCase)
                    .ToList();

                // Get the full result with new exam details
                ReshareResultDTO result = ExamHistoryBL.ReshareSharedExamMulti(
                    req.ExamId,
                    req.CreatorUserId,
                    req.CreatorEmailId,
                    emails,
                    req.Force,
                    req.StartDateUTC,
                    req.EndDateUTC
                );

                // Return the complete result object
                return Ok(result);
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [Route("api/ExamHistory/InsertorAddEmail_GetOptOutDetails")]
        [HttpGet]
        [HttpPost]
        public List<ExamHistoryDTO> InsertorAddEmail_GetOptOutDetails(ExamHistoryDTO values)
        {
            return ExamHistoryBL.InsertorAddEmail_GetOptOutDetails(values);
        }

        [Route("api/ExamHistory/OptOut")]
        [HttpGet]
        [HttpPost]
        public string OptOut(ExamQuestionDTO emailid)
        {
            return ExamHistoryBL.OptOut(emailid.Id);
        }
    }
}


