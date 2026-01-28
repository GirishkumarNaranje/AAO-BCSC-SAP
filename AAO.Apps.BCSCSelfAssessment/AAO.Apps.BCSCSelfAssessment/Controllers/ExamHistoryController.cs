namespace AAO.Apps.BCSCSelfAssessment.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Configuration;
    using System.IO;
    using System.Linq;
    using System.Text.RegularExpressions;
    using System.Web.Mvc;
    using AAO.Apps.BCSCSelfAssessment.Proxy;
    using AAO.Common.BCSCSelfAssessment;
    using AAO.DTO.BCSCSelfAssessment;
    using HtmlAgilityPack;
    using iTextSharp.text;
    using iTextSharp.text.pdf;
    using iTextSharp.tool.xml;
    using iTextSharp.tool.xml.pipeline.css;
    using Newtonsoft.Json;
    using Serilog;

    public class ExamHistoryController : BaseResidentController
    {
        private string _sAttrLogPath = ConfigurationManager.AppSettings.Get("LogfilePath");
        // GET: Assesment
        private Serilog.Core.Logger log;
        private class ReshareApiResponse { public int inserted { get; set; } }

        public ExamHistoryController()
        {
            log = new LoggerConfiguration().WriteTo.RollingFile(this._sAttrLogPath, shared: true, retainedFileCountLimit: 7).CreateLogger();
        }

        // POST: ExamHistory
        public ActionResult Index()
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            ServiceCallVM serviceCall = new ServiceCallVM
            {
                userId = user._userId,
            };
            string serviceJson = JsonConvert.SerializeObject(serviceCall);
            string urlGetsatatus = AAOGlobalConstants.SiteWebAPIUrl + "dashboard/GetUserOptIn";
            string resultOptInStatus = HttpProxy.HttpPost(urlGetsatatus, serviceJson, "application/json; charset=utf-8", "POST");
            string optInStatus = JsonConvert.DeserializeObject<string>(resultOptInStatus);
            ViewBag.optInStatus = optInStatus == null ? "0" : optInStatus;
            return View();
        }

        public ActionResult InfoMessage()
        {
            TempData["Msg"] = "Exam successfully submitted ";
            return RedirectToAction("Index", "ExamHistory");
        }

        public ActionResult ExamHistoryDetails(int? Status)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            JsonResult dataresult = new JsonResult();
            try
            {
                string search = Request.Form.GetValues("search[value]")[0];
                string draw = Request.Form.GetValues("draw")[0];
                string order = Request.Form.GetValues("order[0][column]")[0];
                string orderDir = Request.Form.GetValues("order[0][dir]")[0];
                int startRec = Convert.ToInt32(Request.Form.GetValues("start")[0]);
                int pageSize = Convert.ToInt32(Request.Form.GetValues("length")[0]);
                ExamHistoryDTO examhistory = new ExamHistoryDTO();
                examhistory.UserId = user._userId;
                examhistory.ExamStatus = Convert.ToInt32(Status);
                string examPostDataJson = JsonConvert.SerializeObject(examhistory);
                string url = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/ExamHistoryDetails";
                string result = HttpProxy.HttpPost(url, examPostDataJson, "application/json; charset=utf-8", "POST");
                List<ExamHistoryDTO> historydetails = new List<ExamHistoryDTO>();
                historydetails = JsonConvert.DeserializeObject<List<ExamHistoryDTO>>(result);
                historydetails.RemoveAll(x => x.ExamType == "Spaced Repetition");
                int totalRecords = historydetails.Count;
                int recFilter = historydetails.Count;
                historydetails = historydetails.Skip(startRec).Take(pageSize).ToList();
                foreach (var item in historydetails)
                {
                    if (item.CreatorEmailId != null && item.CreatorEmailId.Equals(user._userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        item.ShowDetailedAnswers = true;
                        item.ShowAnsAfterExamCompletion = true;
                        item.IsOriginator = true;
                    }
                }

                dataresult = this.Json(new { draw = Convert.ToInt32(draw), recordsTotal = totalRecords, recordsFiltered = recFilter, data = historydetails }, JsonRequestBehavior.AllowGet);
                return dataresult;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        public ActionResult Shared()
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            ViewBag.Title = "Shared Exams";
            return View();
        }

        public ActionResult SharedExamHistoryDetails(int? Status)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            JsonResult dataresult = new JsonResult();
            try
            {
                string search = Request.Form.GetValues("search[value]")[0];
                string draw = Request.Form.GetValues("draw")[0];
                string order = Request.Form.GetValues("order[0][column]")[0];
                string orderDir = Request.Form.GetValues("order[0][dir]")[0];
                int startRec = Convert.ToInt32(Request.Form.GetValues("start")[0]);
                int pageSize = Convert.ToInt32(Request.Form.GetValues("length")[0]);
                ExamHistoryDTO examhistory = new ExamHistoryDTO();
                examhistory.UserId = user._userId;
                examhistory.ExamStatus = Convert.ToInt32(Status);
                string examPostDataJson = JsonConvert.SerializeObject(examhistory);
                string url = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/SharedExamHistoryDetails";
                string result = HttpProxy.HttpPost(url, examPostDataJson, "application/json; charset=utf-8", "POST");
                List<ExamHistoryDTO> historydetails = new List<ExamHistoryDTO>();
                historydetails = JsonConvert.DeserializeObject<List<ExamHistoryDTO>>(result);
                historydetails.RemoveAll(x => x.ExamType == "Spaced Repetition");
                int totalRecords = historydetails.Count;
                int recFilter = historydetails.Count;
                historydetails = historydetails.Skip(startRec).Take(pageSize).ToList();
                foreach (var item in historydetails)
                {
                    if (item.CreatorEmailId != null && item.CreatorEmailId.Equals(user._userEmail, StringComparison.OrdinalIgnoreCase))
                    {
                        item.ShowDetailedAnswers = true;
                        item.ShowAnsAfterExamCompletion = true;
                        item.IsOriginator = true;
                    }
                }

                dataresult = this.Json(new { draw = Convert.ToInt32(draw), recordsTotal = totalRecords, recordsFiltered = recFilter, data = historydetails }, JsonRequestBehavior.AllowGet);
                return dataresult;
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        public ActionResult DeleteExamHistoryDetails(int? ExamId)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                ExamHistoryDTO examhistory = new ExamHistoryDTO();
                examhistory.UserId = user._userId;
                examhistory.ExamId = Convert.ToInt32(ExamId);
                string url = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/DeleteExamHistoryDetails";
                string examPostDataJson = JsonConvert.SerializeObject(examhistory);
                string result = HttpProxy.HttpPost(url, examPostDataJson, "application/json; charset=utf-8", "POST");
                return RedirectToAction("Index", "ExamHistory");
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        public ActionResult DeleteSharedExamHistoryDetails(int? ExamId)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                ExamHistoryDTO examhistory = new ExamHistoryDTO();
                examhistory.UserId = user._userId;
                examhistory.ExamId = Convert.ToInt32(ExamId);
                string url = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/DeleteExamHistoryDetails";
                string examPostDataJson = JsonConvert.SerializeObject(examhistory);
                string result = HttpProxy.HttpPost(url, examPostDataJson, "application/json; charset=utf-8", "POST");
                return RedirectToAction("Shared", "ExamHistory");
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        /*public ActionResult ReshareExam(int examId, string emaild, string dateTime, DateTime? startdate, DateTime? enddate, bool force = false)
        {
            var user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                // Convert to UTC if not already
                var startDateUTC = startdate?.ToUniversalTime();
                var endDateUTC = enddate?.ToUniversalTime();

                var apiUrl = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/ReshareExam";
                var payload = new
                {
                    ExamId = examId,
                    Emailids = emaild,
                    CreatorEmailId = user._userEmail,
                    CreatorUserId = user._userId,
                    StartDateUTC = startDateUTC, //startdate,
                    EndDateUTC = endDateUTC, //enddate,
                    Force = force
                };
                var res = JsonConvert.DeserializeObject<ReshareApiResponse>(
                    HttpProxy.HttpPost(apiUrl, JsonConvert.SerializeObject(payload), "application/json; charset=utf-8", "POST"));
                var ok = (res != null && res.inserted > 0);

                if (ok && !string.IsNullOrWhiteSpace(emaild))
                {
                    var result = FetchExamDetailsById(examId);
                    var effectiveStart = startdate ?? result.StartDate;
                    var effectiveEnd = enddate ?? result.EndDate;
                    string examName = result.ExamName;
                    *//*var jsonResult = SendSharedExamEmail(emaild, result.examName, result.StartDate, result.EndDate) as JsonResult;
                    bool sent = false;
                    if (jsonResult != null && jsonResult.Data != null && jsonResult.Data is bool)
                    {
                        sent = (bool)jsonResult.Data;
                    }*//*

                    var jsonResult = SendSharedExamEmail(emaild, examName, effectiveStart, effectiveEnd) as JsonResult;
                }

                return Json(new { ok, inserted = res != null ? res.inserted : 0 }, JsonRequestBehavior.AllowGet);
            }
            catch
            {
                return Json(new { ok = false, error = "Reshare failed." }, JsonRequestBehavior.AllowGet);
            }
        }*/

        public ActionResult ReshareExam(int examId, string emaild, string dateTime, DateTime? startdate, DateTime? enddate, bool force = false)
        {
            var user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                // Convert to UTC if not already
                var startDateUTC = startdate?.ToUniversalTime();
                var endDateUTC = enddate?.ToUniversalTime();

                var apiUrl = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/ReshareExam";
                var payload = new
                {
                    ExamId = examId,
                    Emailids = emaild,
                    CreatorEmailId = user._userEmail,
                    CreatorUserId = user._userId,
                    StartDateUTC = startDateUTC,
                    EndDateUTC = endDateUTC,
                    Force = force
                };

                var responseJson = HttpProxy.HttpPost(apiUrl, JsonConvert.SerializeObject(payload), "application/json; charset=utf-8", "POST");
                var reshareResult = JsonConvert.DeserializeObject<ReshareResultDTO>(responseJson);

                var ok = (reshareResult != null && reshareResult.InsertedCount > 0);

                if (ok && reshareResult.NewExams != null && reshareResult.NewExams.Count > 0)
                {
                    // Get original exam details for exam name
                    var originalExam = FetchExamDetailsById(examId);

                    // Send email to each recipient with their specific exam dates
                    foreach (var newExam in reshareResult.NewExams)
                    {
                        // Use the new exam's dates (which may be different from original)
                        var effectiveStart = newExam.StartDate;
                        var effectiveEnd = newExam.EndDate;

                        // Send email with the correct dates for this specific recipient
                        SendSharedExamEmail(newExam.RecipientEmail, originalExam.ExamName, effectiveStart, effectiveEnd);
                    }
                }

                return Json(new { ok, inserted = reshareResult != null ? reshareResult.InsertedCount : 0 }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                log.Error("Error in ReshareExam: {0}", ex.Message);
                return Json(new { ok = false, error = "Reshare failed: " + ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        public static string StripHTML(string input)
        {
            if (input != null)
            {
                return Regex.Replace(input, "<.*?>", string.Empty);
            }
            else
            {
                return null;
            }
        }

        [HttpPost]
        public ActionResult ValidateReshareDuplicates(int examId, string emails)
        {
            try
            {
                var apiUrl = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/ValidateReshareDuplicates";
                var payload = new { ExamId = examId, Emailids = emails ?? "" };

                var json = HttpProxy.HttpPost(apiUrl,
                    Newtonsoft.Json.JsonConvert.SerializeObject(payload),
                    "application/json; charset=utf-8", "POST");

                var res = Newtonsoft.Json.JsonConvert.DeserializeObject<ReshareValidateApiResponse>(json);
                return Json(new { ok = true, duplicates = res?.duplicates ?? new List<string>() }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex) //CAPTURE THE EXCEPTION
            {
                // Log the error
                log.Error("Error in ValidateReshareDuplicates:  {0}", ex.Message);

                // Return JSON with error details
                return Json(new { ok = false, error = "Validation failed:  " + ex.Message, duplicates = new List<string>() }, JsonRequestBehavior.AllowGet);
            }
        }

        public ActionResult ShareResult(int examId, string emaild, string dateTime)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                string htmlFile = string.Empty;
                ExamQuestionDTO examque = new ExamQuestionDTO();
                examque.UserId = user._userId;
                examque.ExamId = Convert.ToInt32(examId);
                examque.Emailids = Convert.ToString(emaild);
                string examPostDataJson = JsonConvert.SerializeObject(examque);

                string emailids = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/InsertorAddEmail_GetOptOutDetails";
                string emailidsResult = HttpProxy.HttpPost(emailids, examPostDataJson, "application/json; charset=utf-8", "POST");
                List<ExamHistoryDTO> emailDetails = new List<ExamHistoryDTO>();
                emailDetails = JsonConvert.DeserializeObject<List<ExamHistoryDTO>>(emailidsResult);

                // Call for additional data on PDF
                string pdfDataUrl = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/GetPdfDetails";
                string pdfDataResult = HttpProxy.HttpPost(pdfDataUrl, examPostDataJson, "application/json; charset=utf-8", "POST");
                PdfDetailsDataVM pdfDetails = new PdfDetailsDataVM();
                pdfDetails = JsonConvert.DeserializeObject<PdfDetailsDataVM>(pdfDataResult);
                htmlFile += @"<html><body style='background-color:#fff;font-size:14px;font-family:arial;'>";
                htmlFile += @"<p><b>Exam Summary</b></p>";
                if (pdfDetails.CompletionDate != null)
                {
                    htmlFile += @"<p>This Exam, completed on " + pdfDetails.CompletionDate;
                }

                if (pdfDetails.UserName != null)
                {
                    htmlFile += @" by " + pdfDetails.UserName;
                }

                if (pdfDetails.ResidencyEndDate != null)
                {
                    htmlFile += @" with residency end date " + pdfDetails.ResidencyEndDate;
                }

                htmlFile += @" contained " + pdfDetails.TotalQuestion + " questions";
                if (pdfDetails.SectionLIst.Count > 0)
                {
                    htmlFile += @" from the following sections:</p>";
                    htmlFile += @"<br/>";
                    foreach (SectionVM section in pdfDetails.SectionLIst)
                    {
                        htmlFile += @"<p>" + section.SectionName + "</p>";
                    }
                }
                else
                {
                    htmlFile += @".</p>";
                }

                htmlFile += @" < hr></hr>";
                htmlFile += @"<p>This was a " + pdfDetails.TimedExam + "</p>";
                htmlFile += @"<p>This was a " + pdfDetails.ExamMode + "</p>";
                htmlFile += @"<hr></hr>";
                htmlFile += @"<p>Overall score: " + pdfDetails.OverallScore + "%</p>";
                htmlFile += @"<p>Correct answers: " + pdfDetails.CorrectAnswers + "</p>";
                htmlFile += @"<p>Incorrect answers: " + pdfDetails.IncorrectAnswers + "</p>";
                htmlFile += @"<p>Unanswered: " + pdfDetails.Unanswered + "</p>";

                htmlFile += "</body></html><br/><br/>";
                htmlFile = htmlFile.Replace("\r\n", "");
                htmlFile = htmlFile.Replace("<br>", "</br>");
                htmlFile = Server.HtmlEncode(htmlFile);

                bool flag = CreatePdfFromHtmlFile(htmlFile, examId, emaild, dateTime, emailDetails);

                if (flag)
                {
                    return Json("1");
                }
                else
                {
                    return null;
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
                return null;
            }
        }

        public bool CreatePdfFromHtmlFile(string strhtmlData, int examId, string emailid, string dateTime, List<ExamHistoryDTO> emailDetails)
        {
            string storeUrl = ConfigurationManager.AppSettings["STORE_URL"].ToString();
            string bcscSiteUrl = ConfigurationManager.AppSettings["BCSCSiteUrl"].ToString();
            string bcscEmail = ConfigurationManager.AppSettings["BCSCEmail"].ToString();
            string customerEmail = ConfigurationManager.AppSettings["CustomerEmail"].ToString();
            string returnUrl = ConfigurationManager.AppSettings["RETURN_SITE_URL"];
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                var filePath = @"~\ShareResultEmailTemplete\ShareResultEmailTemplete.html";
                DirectoryInfo directory = new DirectoryInfo(System.Web.Hosting.HostingEnvironment.MapPath(filePath));
                string username = user._userName;
                string userEmail = user._userEmail;
                List<string> cssFiles = new List<string>();
                string strhtml = Server.HtmlDecode(strhtmlData);
                string path = ConfigurationManager.AppSettings["ShareResultPDFPath"].ToString();
                var myUniqueFileName = string.Format(@"{0}.pdf", username + '_' + dateTime);

                string strFileName = path + myUniqueFileName;
                if (!(Directory.Exists(path)))
                {
                    Directory.CreateDirectory(path);
                }
                else
                {
                    DeletePDFFile(strFileName);
                }

                Document document = new Document();
                PdfWriter writer = PdfWriter.GetInstance(document, new FileStream(strFileName, FileMode.Create));
                ICSSResolver cssResolver = XMLWorkerHelper.GetInstance().GetDefaultCssResolver(true);
                cssFiles.ForEach(i => cssResolver.AddCssFile(System.Web.HttpContext.Current.Server.MapPath(i), true));
                using (var readHtml = new StringReader(strhtml))
                {
                    document.Open();
                    XMLWorkerHelper.GetInstance().ParseXHtml(writer, document, readHtml);
                    document.Close();
                    var sendFeedback = new AssessmentController();

                    var doc = new HtmlDocument();
                    doc.Load(directory.ToString());
                    string shareResultBody = doc.Text;
                    shareResultBody = shareResultBody.Replace("UserName", username);
                    shareResultBody = shareResultBody.Replace("Useremail", userEmail);

                    bool emailsent = false;
                    bool email_OptOut = false;
                    string[] emailArray = emailid.Split(',');
                    foreach (string email in emailArray)
                    {
                        var emailDetail = emailDetails.FirstOrDefault(e => e.Emailids == email && e.OptOut == 0);
                        if (emailDetail != null)
                        {
                            string trimmedEmail = email.Trim();
                            string emailSpecificBody = shareResultBody;
                            string unsubscribe_link = "<a href='" + returnUrl + "/EmailOptOut/OptOut?optOut=" + emailDetail.Id + "' style='color: #3e87cb;'>Unsubscribe</a>";

                            emailSpecificBody = shareResultBody.Replace("Unsubscribe", unsubscribe_link);

                            int result = sendFeedback.SendFeedback(emailSpecificBody, examId, strFileName, username, trimmedEmail);

                            if (result == 1)
                            {
                                emailsent = true;
                            }
                            else
                            {
                                emailsent = false;
                            }
                        }

                        email_OptOut = true;
                    }

                    DeletePDFFile(strFileName);
                    return email_OptOut;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }

        public static void DeletePDFFile(string filename)
        {
            System.GC.Collect();
            System.GC.WaitForPendingFinalizers();

            if (System.IO.File.Exists(filename))
            {
                System.IO.File.Delete(filename);
            }
        }

        public ActionResult ResetExam()
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                log.Information("Start Controller:{0}, Method:{1}, userId:{2}", "ExamHistoryController", "ResetExam", user._userId);
                ExamCountOnExamTypeVM examReset = new ExamCountOnExamTypeVM
                {
                    UserId = user._userId,
                };

                // Get ExamId By UserId
                string examResetDataJson = JsonConvert.SerializeObject(examReset);
                string urlExamReset = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/ResetExam";
                string resultExamReset = HttpProxy.HttpPost(urlExamReset, examResetDataJson, "application/json; charset=utf-8", "POST");
                int result = JsonConvert.DeserializeObject<int>(resultExamReset);
                ViewBag.ResetExam = result;
                log.Information("End Controller:{0}, Method:{1}, userId:{2}", "ExamHistoryController", "ResetExam", user._userId);
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                log.Error(ex.Message + " Controller:{0}, Method:{1}, UserId:{2}", "ExamHistoryController", "ResetExam", user._userId);
                Console.Write(ex.Message);
                return null;
            }
        }

        /*public ActionResult GetExamdetailsById(int examId)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {

                log.Information("Start Controller:{0}, Method:{1}, userId:{2}", "ExamHistoryController", "GetExamdetailsById", user._userId);

                // Construct API URL
                string url = $"{AAOGlobalConstants.SiteWebAPIUrl}ExamManager/GetExamById?examId={examId}";

                // Call HttpGET with correct parameters
                string responseJson = HttpProxy.HttpGET(url, "application/json; charset=utf-8", "GET");

                // Deserialize full DTO
                ExamDTO fullExam = JsonConvert.DeserializeObject<ExamDTO>(responseJson);

                // Map to lightweight ViewModel
                ExamDetailsByIdVM examSummary = new ExamDetailsByIdVM
                {
                    ExamId = fullExam.ExamId,
                    ExamName = fullExam.ExamName,
                    StartDate = fullExam.StartDate,
                    EndDate = fullExam.EndDate,
                    NoofQuestions = fullExam.NoofQuestions,
                    ExamTimeType = fullExam.ExamTimeType,
                    ExamAnswerToShow = fullExam.ExamAnswerToShow,
                    ShowDetailedAnswers = fullExam.ShowDetailedAnswers,
                    ShowAnsAfterExamCompletion = fullExam.ShowAnsAfterExamCompletion
                };

                log.Information("End Controller:{0}, Method:{1}, userId:{2}", "ExamHistoryController", "GetExamdetailsById", user._userId);
                return Json(examSummary, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                log.Error(ex.Message + " Controller:{0}, Method:{1}, UserId:{2}", "ExamHistoryController", "GetExamdetailsById", user._userId);
                return Json(null, JsonRequestBehavior.AllowGet);
            }
        }*/

        public ExamDetailsByIdVM FetchExamDetailsById(int examId)
        {
            string url = $"{AAOGlobalConstants.SiteWebAPIUrl}ExamManager/GetExamById?examId={examId}";
            string responseJson = HttpProxy.HttpGET(url, "application/json; charset=utf-8", "GET");

            ExamDTO fullExam = JsonConvert.DeserializeObject<ExamDTO>(responseJson);

            return new ExamDetailsByIdVM
            {
                ExamId = fullExam.ExamId,
                ExamName = fullExam.ExamName,
                StartDate = fullExam.StartDate,
                EndDate = fullExam.EndDate,
                NoofQuestions = fullExam.NoofQuestions,
                ExamTimeType = fullExam.ExamTimeType,
                ExamAnswerToShow = fullExam.ExamAnswerToShow,
                ShowDetailedAnswers = fullExam.ShowDetailedAnswers,
                ShowAnsAfterExamCompletion = fullExam.ShowAnsAfterExamCompletion
            };
        }

        public ActionResult SendSharedExamEmail(string emailId, string examName, DateTime? startDate, DateTime? endDate)
        {
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            try
            {
                log.Information("start Controller :{0} method :{1} emaild:{2} userId:{3} examName:{4}", "ExamManagerController", "ShareExam", emailId, user._userId, examName);

                string userName = user._userName;

                ExamQuestionDTO examque = new ExamQuestionDTO();
                examque.UserId = user._userId;
                examque.Emailids = Convert.ToString(emailId);
                string examPostDataJson = JsonConvert.SerializeObject(examque);

                string emailids = AAOGlobalConstants.SiteWebAPIUrl + "ExamHistory/InsertorAddEmail_GetOptOutDetails";
                string emailidsResult = HttpProxy.HttpPost(emailids, examPostDataJson, "application/json; charset=utf-8", "POST");
                List<ExamHistoryDTO> emailDetails = new List<ExamHistoryDTO>();
                emailDetails = JsonConvert.DeserializeObject<List<ExamHistoryDTO>>(emailidsResult);

                var filePath = @"~\ShareResultEmailTemplete\SharedExamEmailTemplate.html";
                DirectoryInfo directory = new DirectoryInfo(System.Web.Hosting.HostingEnvironment.MapPath(filePath));

                var doc = new HtmlDocument();
                doc.Load(directory.ToString());
                string shareResultBody = doc.Text;

                shareResultBody = shareResultBody.Replace("UserName", userName);

                TimeZoneInfo easternZone = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");

                // Convert UTC dates to EST and format them
                string formattedStartDate = startDate.HasValue ? TimeZoneInfo.ConvertTimeFromUtc(startDate.Value, easternZone).ToString("MM-dd-yyyy") : "N/A";

                string formattedEndDate = endDate.HasValue ? TimeZoneInfo.ConvertTimeFromUtc(endDate.Value, easternZone).ToString("MM-dd-yyyy") : "N/A";

                string formattedEndTime = endDate.HasValue ? 
                    TimeZoneInfo.ConvertTimeFromUtc(
                        endDate.Value.TimeOfDay == TimeSpan.Zero ?
                        endDate.Value.Date.AddHours(23).AddMinutes(59) :
                        endDate.Value,
                        easternZone).ToString("HH:mm") : "N/A";

                // Check if both dates are null
                if (!startDate.HasValue && !endDate.HasValue)
                {
                    shareResultBody = shareResultBody.Replace("StartDateAndExpires", "The exam has no expiration.");
                }
                else
                {
                    shareResultBody = shareResultBody.Replace(
                        "StartDateAndExpires",
                        $"The exam can be started on '{formattedStartDate}' and expires on '{formattedEndDate}' at '{formattedEndTime}' Eastern Time.");
                }

                bool flag = SendEmailToRecipients(shareResultBody, emailId, emailDetails);

                log.Information("end Controller :{0} method :{1} emaild:{2} userId:{3} examName:{4} result:{5}", "ExamManagerController", "ShareExam", emailId, user._userId, examName, flag);

                if (flag)
                {
                    return Json(new { success = true, message = "Exam shared successfully" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { success = false, message = "Failed to share exam" }, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception e)
            {
                log.Error(e.Message + " Controller:{0}, Method:{1}, UserId:{2}", "ExamManagerController", "ShareExam", user._userId);
                return Json(new { success = false, message = "An error occurred while sharing the exam: " + e.Message }, JsonRequestBehavior.AllowGet);
            }
        }

        private bool SendEmailToRecipients(string shareResultBody, string emailid, List<ExamHistoryDTO> emailDetails)
        {
            string returnUrl = ConfigurationManager.AppSettings["RETURN_SITE_URL"];
            string examHistoryurl = ConfigurationManager.AppSettings["EXAM_HISTORY_LINK"];
            UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
            var sendFeedback = new AssessmentController();
            try
            {
                bool allEmailsSent = true;
                string[] emailArray = emailid.Split(',');

                foreach (string email in emailArray)
                {
                    var emailDetail = emailDetails.FirstOrDefault(e => e.Emailids == email && e.OptOut == 0);
                    if (emailDetail != null)
                    {
                        string trimmedEmail = email.Trim();
                        shareResultBody = shareResultBody.Replace("ExamHistoryLink", "<a href='" + examHistoryurl + "'>Click here to view the exam.</a>");
                        string emailSpecificBody = shareResultBody;

                        string unsubscribe_link = "<a href='" + returnUrl + "/EmailOptOut/OptOut?optOut=" + emailDetail.Id + "' style='color: #3e87cb;'>Unsubscribe</a>";
                        emailSpecificBody = shareResultBody.Replace("Unsubscribe", unsubscribe_link);

                        int result = sendFeedback.SendFeedbackSharedExam(emailSpecificBody, trimmedEmail);
                        if (result != 1)
                        {
                            allEmailsSent = false;
                        }
                    }
                }

                return allEmailsSent;
            }
            catch (Exception e)
            {
                log.Error(e.Message + " Controller:{0}, Method:{1}, UserId:{2}", "ExamManagerController", "SendEmailToRecipients", user._userId);
                return false;
            }
        }

        // ADD THIS NEW METHOD
        [HttpPost]
        public ActionResult CheckSubscribedEmails(string emails)
        {
            try
            {
                UserIdentity user = new UserIdentity(System.Web.HttpContext.Current.User.Identity.Name);
                log.Information("start Controller :{0} method :{1} emails:{2} userId:{3}", "ExamHistoryController", "CheckSubscribedEmails", emails, user._userId);

                string apiUrl = AAOGlobalConstants.SiteWebAPIUrl + "ExamManager/CheckSubscribedEmails";
                var payload = new { Emailids = emails ?? "" };

                var json = HttpProxy.HttpPost(apiUrl, Newtonsoft.Json.JsonConvert.SerializeObject(payload), "application/json; charset=utf-8", "POST");

                var res = Newtonsoft.Json.JsonConvert.DeserializeObject<ReshareValidateApiResponse>(json);

                log.Information("end Controller :{0} method :{1} unsubscribed count:{2} userId:{3}", "ExamHistoryController", "CheckSubscribedEmails", res?.duplicates?.Count ?? 0, user._userId);

                return Json(new { ok = true, duplicates = res?.duplicates ?? new List<string>() }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)  // CAPTURE THE EXCEPTION
            {
                log.Error("Error in CheckSubscribedEmails: {0}", ex.Message);

                return Json(new { ok = false, error = "Subscription check failed: " + ex.Message, duplicates = new List<string>() }, JsonRequestBehavior.AllowGet);
            }
        }

        // HELPER CLASS FOR API RESPONSE (IF NOT ALREADY EXISTS)
        private class ReshareValidateApiResponse
        {
            public int inserted { get; set; }

            public List<string> duplicates { get; set; } = new List<string>();
        }
    }
}