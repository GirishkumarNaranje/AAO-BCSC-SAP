namespace AAO.BAL.BCSCSelfAssessment
{
    using System.Collections.Generic;
    using AAO.Common.BCSCSelfAssessment;
    using AAO.DAL.BCSCSelfAssessment;
    using AAO.DTO.BCSCSelfAssessment;
    using System;

    public static class ExamHistoryBL
    {
        public static List<ExamHistoryDTO> ExamHistoryDetails(ExamHistoryDTO examhistory)
        {
            return ExamHistoryDAL.ExamHistoryDetails(examhistory);
        }

        public static void DeleteExamHistoryDetails(ExamHistoryDTO examhistory)
        {
            ExamHistoryDAL.DeleteExamHistoryDetails(examhistory.ExamId, examhistory.UserId);
        }

        /*public static int ReshareSharedExamMulti(int originalExamId, int creatorUserId, string creatorEmailId, IEnumerable<string> emails, bool force = false, DateTime? startUtc = null, DateTime? endUtc = null)
        {
            return ExamHistoryDAL.ReshareSharedExamMulti(originalExamId, creatorUserId, creatorEmailId, emails, force, startUtc, endUtc);
            //return ExamHistoryDAL.ReshareSharedExamMulti(originalExamId, creatorUserId, creatorEmailId, emails, force, startUtc, endUtc);
        }*/

        public static ReshareResultDTO ReshareSharedExamMulti(int originalExamId, int creatorUserId, string creatorEmailId, IEnumerable<string> emails, bool force = false, DateTime? startUtc = null, DateTime? endUtc = null)
        {
            // The stored procedure now handles both exam creation and question copying
            // and returns details of newly created exams
            return ExamHistoryDAL.ReshareSharedExamMulti(originalExamId, creatorUserId, creatorEmailId, emails, force, startUtc, endUtc);
        }

        public static List<string> ReshareSharedExam_CheckDuplicates(int originalExamId, IEnumerable<string> emails)
        {
            return ExamHistoryDAL.ReshareSharedExam_CheckDuplicates(originalExamId, emails);
        }

        public static PdfDetailsDataVM GetPdfDetails(ExamHistoryDTO examhistory)
        {
           return ExamHistoryDAL.GetPdfDetails(examhistory);
        }

        // Reset Exam
        public static int ResetExam(int userId)
        {
            return ExamHistoryDAL.ResetExam(userId);
        }

        public static List<ExamHistoryDTO> SharedExamHistoryDetails(ExamHistoryDTO examhistory)
        {
            return ExamHistoryDAL.SharedExamHistoryDetails(examhistory);
        }

        public static List<ExamHistoryDTO> InsertorAddEmail_GetOptOutDetails(ExamHistoryDTO values)
        {
            List<ExamHistoryDTO> email_list = new List<ExamHistoryDTO>();
            string[] emailArray = values.Emailids.Split(',');
            foreach (string email in emailArray)
            {
                ExamHistoryDTO emailids = ExamHistoryDAL.InsertorAddEmail_GetOptOutDetails(email, values);
                email_list.Add(emailids);
            }

            return email_list;
        }

        public static string OptOut(int id)
        {
            return ExamHistoryDAL.OptOut(id);
        }
    }
}
