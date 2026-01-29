google.charts.load({ packages: ["corechart", "gauge", "table", "timeline", "bar"] });
google.charts.setOnLoadCallback(DrawCumulativeChart);

$(function () {

    //Remove Shared Exam Data
    localStorage.removeItem('examQuestionLimit');
    localStorage.removeItem('selectedQuestionIds');
    sessionStorage.removeItem('examQuestionLimit');
    sessionStorage.removeItem('selectedQuestionIds');
    sessionStorage.removeItem('buildExamFormData');
    sessionStorage.removeItem('cameFromSearchPage');

    // ---------- CHANGE: ADD GLOBAL TIMEZONE / DATE HELPERS (ADDED) ----------
    // These helpers replace fragile .trim() checks and local parsing that was
    // previously created inside loops. They provide:
    // - safe presence checks (hasDateValue)
    // - parsing date-only DB strings as a source-day in a canonical sourceTz
    // - flexible parsing for ISO, /Date(...)/, epoch ms etc and return moment in viewer tz
    // - helpers to format for viewer or for source (DB calendar day)
    //
    // Place these once, after moment + moment-timezone have been loaded in your layout.

    var viewerTz = (window.getViewerTz && window.getViewerTz()) || (moment.tz && moment.tz.guess && moment.tz.guess()) || 'UTC';
    // Change sourceTz to match how your DB date-only values should be interpreted.
    // If DB stores midnight as UTC (as your screenshot shows 2025-12-12 00:00:00.000), keep 'UTC'.
    // If DB dates are server-local days, set the IANA name for that timezone (e.g. 'America/Los_Angeles').
    var sourceTz = 'UTC'; // <-- adjust if needed

    function hasDateValue(v) {
        if (v === null || v === undefined) return false;
        if (typeof v === 'string') return v.trim() !== '';
        if (typeof v === 'number') return true;
        if (Object.prototype.toString.call(v) === '[object Date]') return !isNaN(v.getTime());
        if (moment && moment.isMoment && moment.isMoment(v)) return v.isValid();
        return !!v;
    }

    // Parse date-only strings as a source-day (midnight in sourceTz)
    function parseDateOnlyAsSource(dateStr) {
        if (!hasDateValue(dateStr)) return null;
        var formats = ["DD/MM/YYYY", "MM/DD/YYYY", "YYYY-MM-DD", "MMM DD YYYY", "MMM D YYYY"];
        var m = moment.tz(dateStr, formats, true, sourceTz);
        if (m && m.isValid()) return m.startOf('day');
        // fallback: non-strict parse in sourceTz
        m = moment.tz(dateStr, sourceTz);
        return (m && m.isValid()) ? m.startOf('day') : null;
    }

    // Flexible parse for ISO, /Date(...)/, epoch ms, Date objects or date-only strings.
    // Returns a moment presented in viewer timezone (useful for display).
    function parseFlexibleToViewer(dateInput) {
        if (!hasDateValue(dateInput)) return null;
        if (moment.isMoment && moment.isMoment(dateInput)) return dateInput.clone().tz(viewerTz);
        if (Object.prototype.toString.call(dateInput) === '[object Date]') return moment(dateInput).tz(viewerTz);

        var s = dateInput.toString();

        // Microsoft JSON /Date(1234567890)/
        var msMatch = /\/Date\((-?\d+)\)\//.exec(s);
        if (msMatch) return moment.utc(parseInt(msMatch[1], 10)).tz(viewerTz);

        // plain epoch milliseconds
        if (/^\d+$/.test(s)) return moment.utc(parseInt(s, 10)).tz(viewerTz);

        // try parse as source-day first (preferred for DB date-only)
        var src = parseDateOnlyAsSource(s);
        if (src) return src.clone().tz(viewerTz);

        // fallback to generic moment parse and present in viewer tz
        var m = moment(s);
        return (m && m.isValid()) ? m.clone().tz(viewerTz) : null;
    }

    function fmtForViewer(momentObj) {
        return momentObj ? momentObj.clone().tz(viewerTz).format('MMM DD YYYY') : '';
    }
    function fmtForSource(momentObj) {
        // Format the DB calendar day (source timezone). Use when you want everyone to see same DB date.
        return momentObj ? momentObj.clone().tz(sourceTz).format('MMM DD YYYY') : '';
    }
    function toUtcMoment(momentObj) {
        return momentObj ? momentObj.clone().utc() : null;
    }
    // ---------- END CHANGE ----------

    // start Call chart on Peer Comparision  change
    $('#toggle-switch1').change(function () {
        if ($('#toggle-switch1').is(":checked") == true) {
            $('#CommulativePerformance_chart').html('');
            $("#OnChangeFilterChartId").show();
            $("#DefaultFilterChartId").hide();
            DrawCumulativeChart();

        } else {
            $('#CommulativePerformance_chart').html('');
            $("#DefaultFilterChartId").show();
            $("#OnChangeFilterChartId").hide();
            DrawCumulativeChart();
        }
    });
    // end Call cahrt on Peer Comparision  change

    // start Call cahrt on Exam type change
    $('#ChartTypeId').change(function () {
        if ($('#toggle-switch1').is(":checked") == true) {
            $('#CommulativePerformance_chart div').html('');
            DrawCumulativeChart();
        } else {
            $('#CommulativePerformance_chart div').html('');
            DrawCumulativeChart();
        }
    });
    // end Call cahrt on Exam type change

    // For QuickExam from dashboard
    $(document).on('click', "#examBuildquick", function () {
        localStorage.removeItem('examQuestionLimit');
        localStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('examQuestionLimit');
        sessionStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('buildExamFormData');
        window.location.href = '/ExamManager/Index#QuickExam';
    })

    // start Call cahrt on date range change
    $('#reportrange').on('apply.daterangepicker', function (ev, picker) {
        if ($('#toggle-switch1').is(":checked") == true) {
            $('#CommulativePerformance_chart div').html('');
            DrawCumulativeChart();
        } else {
            $('#CommulativePerformance_chart div').html('');
            DrawCumulativeChart();
        }
    });
    // end Call cahrt on Exam type change
    //var start = moment().subtract(365, 'days'); //StartDate = past 1 year from current date
    var StartDate = '06/01/2018' // Start date changes to '1 June 2018' 
    var start = moment(StartDate);
    var end = moment();
    function cb(start, end) {
        $('#reportrange span').html(start.format('MM-DD-YYYY') + ' To ' + end.format('MM-DD-YYYY'));
    }
    cb(start, end);
    $('#reportrange').daterangepicker({
        startDate: start,
        endDate: end,
        maxDate: moment(),
        ranges: {
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'Last 3 Months': [moment().subtract(90, 'days'), moment()],
            'Last 6 Months': [moment().subtract(180, 'days'), moment()],
            '1 Year': [moment().subtract(365, 'days'), moment()],

        }
    }, cb);


    //Exam History Code

    $.ajax({
        type: 'Post',
        dataType: "JSON",
        url: '/Dashboard/GetExamStatusCount',
        success: function (result) {
            $(".exams-all").append(result.allExam);
            $(".exams-completed").append(result.completed);
            $(".exams-inprogress").append(result.inProgress);
        }
    });

    $("#ExamHistoryPageRedirect").on('click', function () {
        window.location.href = '/ExamHistory/Index';
    });
    // End Of History Code


    //Exam Average Score
    $.ajax({
        type: 'Post',
        dataType: "JSON",
        url: '/Dashboard/GetExamScore',
        success: function (result) {
            var resdata = result;
            $.each(result, function (key, value) {
                if (value.examType == "1") {
                    $(".simulatedAvgScore").append(value.averageScore + "%");
                    $(".simulaterdAttemptQuestion").append(value.totalAttempedQuestion);
                    $(".simulatedCorrectAnswer").append(value.correctAnswer);
                    $(".simulatedIncorrectAnswer").append(value.inCorrectAnswer);
                }
                else if (value.examType == "0") {
                    $(".customAvgScore").append(value.averageScore + "%");
                    $(".customAttemptQuestion").append(value.totalAttempedQuestion);
                    $(".customCorrectAnswer").append(value.correctAnswer);
                    $(".customInCorrectAnswer").append(value.inCorrectAnswer);
                }
            });
        }
    });
    // End of Exam Average Score

    // Exam Progress List
    function loadData() {
        $.ajax({
            type: 'Post',
            dataType: "JSON",
            url: '/Dashboard/MyGetmyExamHistoryList',
            success: function (result) {

                var LogedInEmail = result.LogedInEmail;

                if (result.ExamHistory != '') {
                    $.each(result.ExamHistory, function (key, value) {
                        if (value.ExamId > 0) {
                            var data = "<tr><td class=exam-title>" + value.ExamName + " (" + value.AttempedQuestionCount + "/" + value.TotalQuestionCount + ")</td>";
                            data += "<td class='fainted-font examfont1'>" + value.ExamType + " </td>";

                            // initialize
                            var resumeAttr = "";
                            var displayDate = "";

                            // ---------- CHANGE: REWORKED SHARED EXAM DATE PARSING & START/DISABLE LOGIC ----------
                            // Use global helpers to parse DB start/end as source-day moments,
                            // compare using UTC (sdUtc, edUtc vs nowUtc), and display the DB calendar date (fmtForSource).
                            // Also generate a robust resumeAttr that uses data-disabled / aria-disabled attributes,
                            // and generate button markup using a class (no duplicate ids).

                            var ExamLastAttemptDate_utc = value.LastAttempedDate;
                            const [datePart_elad, timePart_elad, period_elad] = ExamLastAttemptDate_utc.split(' ');
                            const [day_elad, month_elad, year_elad] = datePart_elad.split('-');
                            const [hours_elad, minutes_elad, seconds_elad] = timePart_elad.split(':');

                            // Convert 12-hour to 24-hour format
                            let adjustedHours_elad = parseInt(hours_elad);
                            if (period_elad === 'PM' && adjustedHours_elad !== 12) {
                                adjustedHours_elad += 12;
                            } else if (period_elad === 'AM' && adjustedHours_elad === 12) {
                                adjustedHours_elad = 0;
                            }

                            // Create date object treating the input as UTC
                            const utcDateString_elad = `${year_elad}-${month_elad}-${day_elad}T${String(adjustedHours_elad).padStart(2, '0')}:${minutes_elad}:${seconds_elad}Z`;
                            const date_elad = new Date(utcDateString_elad);

                            // JavaScript automatically converts to local timezone when you use toLocaleDateString
                            const formattedDate_elad = date_elad.toLocaleDateString('en-US', {
                                year: 'numeric',
                                month: 'short',
                                day: 'numeric'
                            }).replace(',', '');

                            if (value.ExamType == "Shared") {

                                // parse DB start/end as source-day (sourceTz midnight)
                                var sdSource = hasDateValue(value.ExamStartDate) ? parseDateOnlyAsSource(value.ExamStartDate) : null;
                                var edSource = hasDateValue(value.ExamEndDate) ? parseDateOnlyAsSource(value.ExamEndDate) : null;

                                // UTC moments for canonical comparisons
                                var sdUtc = sdSource ? toUtcMoment(sdSource) : null;
                                var edUtc = edSource ? toUtcMoment(edSource) : null;
                                var nowUtc = moment.utc().startOf('day');

                                // viewer-converted moments for optional viewer display
                                var sdViewer = sdSource ? sdSource.clone().tz(viewerTz) : null;
                                var edViewer = edSource ? edSource.clone().tz(viewerTz) : null;

                                var sdValid = !!sdSource;
                                var edValid = !!edSource;

                                //START
                                var dateToFormat_sd = value.ExamStartDate;
                                var dateToFormat_ed = value.ExamEndDate;

                                var formattedDate_sd, formattedDate_ed, examDateMoment_sd, examDateMoment_ed, todayMoment;

                                if (dateToFormat_sd && dateToFormat_ed)
                                {
                                    // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                                    const [datePart_sd, timePart_sd, period_sd] = dateToFormat_sd.split(' ');
                                    const [day_sd, month_sd, year_sd] = datePart_sd.split('-');
                                    const [hours_sd, minutes_sd, seconds_sd] = timePart_sd.split(':');

                                    // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                                    const [datePart_ed, timePart_ed, period_ed] = dateToFormat_ed.split(' ');
                                    const [day_ed, month_ed, year_ed] = datePart_ed.split('-');
                                    const [hours_ed, minutes_ed, seconds_ed] = timePart_ed.split(':');

                                    // Convert 12-hour to 24-hour format
                                    let adjustedHours_sd = parseInt(hours_sd);
                                    if (period_sd === 'PM' && adjustedHours_sd !== 12) {
                                        adjustedHours_sd += 12;
                                    } else if (period_sd === 'AM' && adjustedHours_sd === 12) {
                                        adjustedHours_sd = 0;
                                    }

                                    // Convert 12-hour to 24-hour format
                                    let adjustedHours_ed = parseInt(hours_ed);
                                    if (period_ed === 'PM' && adjustedHours_ed !== 12) {
                                        adjustedHours_ed += 12;
                                    } else if (period_ed === 'AM' && adjustedHours_ed === 12) {
                                        adjustedHours_ed = 0;
                                    }

                                    // Create date object treating the input as UTC
                                    const utcDateString_sd = `${year_sd}-${month_sd}-${day_sd}T${String(adjustedHours_sd).padStart(2, '0')}:${minutes_sd}:${seconds_sd}Z`;
                                    const utcDateString_ed = `${year_ed}-${month_ed}-${day_ed}T${String(adjustedHours_ed).padStart(2, '0')}:${minutes_ed}:${seconds_ed}Z`;

                                    const date_sd = new Date(utcDateString_sd);
                                    const date_ed = new Date(utcDateString_ed);

                                    formattedDate_sd = date_sd.toLocaleDateString('en-US', {
                                        year: 'numeric',
                                        month: 'short',
                                        day: 'numeric'
                                    }).replace(',', '');

                                    formattedDate_ed = date_ed.toLocaleDateString('en-US', {
                                        year: 'numeric',
                                        month: 'short',
                                        day: 'numeric'
                                    }).replace(',', '');

                                    //console.log("date_sd :", date_sd);
                                    //console.log("date_ed :", date_ed);

                                    // Create moment objects for date-only comparison
                                    examDateMoment_sd = moment(date_sd); // Converts to local timezone
                                    examDateMoment_ed = moment(date_ed); // Converts to local timezone

                                    todayMoment = moment(); // Current date/time in local timezone
                                }
                                
                                //END

                                // Creator sees things without disable (existing logic)
                                if (LogedInEmail == value.CreatorEmailId) {
                                    //if (sdValid && edValid) {
                                    if (dateToFormat_sd && dateToFormat_ed) {   
                                        //if (sdUtc && sdUtc.isAfter(nowUtc, "day")) {
                                        if (examDateMoment_sd && todayMoment.isBefore(examDateMoment_sd, 'day')) {
                                            // Display the DB calendar day to everyone (use fmtForSource)
                                            //displayDate = "Start Date " + fmtForSource(sdSource);
                                            displayDate = "Start Date " + formattedDate_sd;
                                        //} else if (edUtc && edUtc.isBefore(nowUtc, "day")) {                                            
                                        } else if (examDateMoment_ed && todayMoment.isAfter(examDateMoment_ed, 'day')) {                                            
                                            //displayDate = "End Date " + fmtForSource(edSource);
                                            displayDate = "End Date " + formattedDate_ed;
                                        } else if (value.AttempedQuestionCount < 1) {
                                            //displayDate = "Start Date " + fmtForSource(sdSource) + ", Not Started";
                                            displayDate = "Start Date " + formattedDate_sd + ", Not Started";
                                        //} else if (value.AttempedQuestionCount > 0 && examDateMoment_sd && examDateMoment_ed && !todayMoment.isAfter(examDateMoment_sd, 'day') && !todayMoment.isBefore(examDateMoment_ed, 'day')) {
                                        } else if (value.AttempedQuestionCount > 0) {
                                            displayDate = "End Date " + formattedDate_ed;
                                        }
                                        else {
                                            //displayDate = "Start Date " + fmtForSource(sdSource);
                                            displayDate = "Start Date " + formattedDate_sd;
                                        }
                                    } else {
                                        if (value.AttempedQuestionCount <= 0) {
                                            displayDate = "No Expiration, Not Started";
                                        }
                                        else {
                                            //displayDate = "Last attempted on " + (last ? last.format("MMM DD YYYY") : (value.LastAttempedDate || ""));
                                            displayDate = "Last attempted on " + formattedDate_elad;
                                        }
                                    }
                                } else {
                                    // Not creator: decide enable/disable
                                    //if (sdValid && edValid) {
                                    if (dateToFormat_sd && dateToFormat_ed) {
                                        //if (sdUtc && sdUtc.isAfter(nowUtc, "day")) {
                                        if (examDateMoment_sd && todayMoment.isBefore(examDateMoment_sd, 'day')) {
                                            // not started yet -> disable
                                            //resumeAttr = ' data-disabled="1" aria-disabled="true" title="Exam not yet started" ';
                                            resumeAttr = ' data-disabled="1" aria-disabled="true" disabled title="Exam not yet started" ';
                                            //displayDate = "Start Date " + fmtForSource(sdSource);
                                            displayDate = "Start Date " + formattedDate_sd;
                                        //} else if (edUtc && edUtc.isBefore(nowUtc, "day")) {
                                        } else if (examDateMoment_ed && todayMoment.isAfter(examDateMoment_ed, 'day')) {
                                            // ended -> disable
                                            resumeAttr = ' data-disabled="1" aria-disabled="true" disabled title="Exam Closed" ';
                                            displayDate = "End Date " + formattedDate_ed + ", Exam Closed";
                                        //} else if (value.AttempedQuestionCount > 0 && sdUtc && edUtc && !sdUtc.isAfter(nowUtc, "day") && !edUtc.isBefore(nowUtc, "day")) {
                                        } else if (value.AttempedQuestionCount > 0) {
                                            //var last = parseFlexibleToViewer(value.LastAttempedDate);
                                            //displayDate = "Last attempted on " + (last ? last.format("MMM DD YYYY") : (value.LastAttempedDate || ""));
                                            //displayDate = "End Date " + fmtForSource(edSource);
                                            displayDate = "End Date " + formattedDate_ed;
                                        } else if (value.AttempedQuestionCount <= 0) {
                                            displayDate = "Start Date " + formattedDate_sd + ", Not Started";
                                            resumeAttr = ''; // start today allowed
                                        } else {
                                            //displayDate = "Start Date - " + fmtForSource(sdSource);
                                            displayDate = "Start Date - " + formattedDate_sd;
                                        }
                                    } else {
                                        // Start/End not both present
                                        if (value.AttempedQuestionCount > 0) {
                                            //var last = parseFlexibleToViewer(value.LastAttempedDate);
                                            //displayDate = "Last attempted on " + (last ? last.format("MMM DD YYYY") : (value.LastAttempedDate || ""));
                                            displayDate = "Last attempted on " + formattedDate_elad;
                                        } else {
                                            displayDate = "No Expiration, Not Started";
                                        }
                                    }
                                }
                            } else {
                                // Non-shared exam fallback (unchanged)
                                if (value.LastAttempedDate && typeof value.LastAttempedDate === 'string' && value.LastAttempedDate.trim() !== "") {
                                    if (value.AttempedQuestionCount > 0) {
                                        //displayDate = "Last attempted on " + value.LastAttempedDate;
                                        displayDate = "Last attempted on " + formattedDate_elad;
                                    }
                                    else {
                                        displayDate = "Not Started";
                                    }
                                }
                            }
                            // ---------- END CHANGE ----------

                            data += "<td class='fainted-font'>" + displayDate + " </td>";

                            /*data += "<td class=text-right><button class='btn btn-primary resume' id='resumebutton' " +
                                "resume_exam_id=" + value.ExamId + " resume resume_question_id=" + value.NextAttemptQuestionId + resumeAttr + ">Resume</button></td></tr>";*/

                            // ---------- CHANGE: use class + data- attributes (no duplicate IDs) ----------
                            if (value.AttempedQuestionCount > 0) {
                                // Resume button
                                data += "<td class=text-right><button type='button' class='btn btn-primary resumebutton' style='width:76px;' " +
                                    "data-resume-exam-id='" + value.ExamId + "' data-resume-question-id='" + value.NextAttemptQuestionId + "' " + (resumeAttr || "") + ">Resume</button></td></tr>";
                            }
                            else {
                                // Start button
                                data += "<td class=text-right><button type='button' class='btn btn-primary resumebutton' style='width:76px;' " +
                                    "data-resume-exam-id='" + value.ExamId + "' data-resume-question-id='" + value.NextAttemptQuestionId + "' " + (resumeAttr || "") + ">Start</button></td></tr>";
                            }
                            // ---------- END CHANGE ----------

                            $('#no-more-tables').append(data);
                            $("#ExamlistId1").show();
                            $("#ExamlistId2").hide();
                            $("#ExamProgreesId1").show();
                            $("#PerformanceSummeryId").show();
                            $("#ExamProgreesId2").hide();
                            $("#ScoreComparisonToggle").show(); //Added for toggle switch enable all time
                        } else {

                            $("#ExamlistId1").show();
                            $("#ExamlistId2").hide();
                            /*$("#ExamProgreesId2").removeClass("col-lg-9").addClass("col-lg-8");*/
                            $("#ExamProgreesId2").removeClass("col-lg-9");
                            $("#ExamProgreesId2").addClass("col-lg-8");
                            $("#ScoreComparisonToggle").show();
                            $("#PerformanceSummeryId").show();
                            $("#ExamProgreesId1").hide();
                            $("#ExamProgreesId2").show();
                        }
                    });
                }
                else {

                    // $('#authors').show();
                    //$('body').addClass('my-body-noscroll-class');
                    $("#ExamlistId1").show(); //.hide();
                    //$("#ExamlistId2").show();
                    //$("#ScoreComparisonToggle").hide(); //Commented for toggle switch enable all time
                    $("#PerformanceSummeryId").show(); //.hide();
                    $("#ExamProgreesId1").hide();
                    $("#ExamProgreesId2").show();
                    /*$("#ChartDivId").removeClass("col-lg-8");
                    $("#ChartDivId").addClass("col-lg-12");*/

                }
            },
        });

        // Getting User status IsFirst User
        $.ajax({
            type: 'Post',
            dataType: "JSON",
            url: '/Dashboard/GetUserStatusIsFirst',
            async: false,
            success: function (result) {
                if (result == 0) {
                    $('#authors').show();
                    $('body').addClass('my-body-noscroll-class');
                } else {
                    GetOptInStatus();
                    //$('#authors').show(); /*Added for see content of first time user */
                }
            }
        });
        // Update User Table for IsLogFirst

        $.ajax({
            type: 'Post',
            dataType: "JSON",
            url: '/Dashboard/UpdateUserStatusIsFirst',
            success: function (result) {
            }
        });
    }
    function GetOptInStatus() {
        $.ajax({
            type: 'Post',
            dataType: "JSON",
            url: '/Dashboard/GetUserOptInStatus',
            async: false,
            success: function (result) {
                if (result == '0') {
                    $('#optInDialog').show();
                } else {
                    $('#optInDialog').fadeOut('slow');
                }
            }
        });
    }
    loadData();
    $(document).on('click', "#examBuild", function () {
        localStorage.removeItem('examQuestionLimit');
        localStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('examQuestionLimit');
        sessionStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('buildExamFormData');
        window.location.href = '/ExamManager/Index';
    })

    $(document).on('click', "#renewalLink", function () {
        var link = $(this).attr("link");
        window.location.href = link;
    })

    // ---------- CHANGE: delegated click handler for resumebutton (replaces old id-based handler) ----------
    // This handler blocks navigation if the button was marked disabled via data-disabled / aria-disabled.
    $(document).on('click', ".resumebutton", function (e) {
        var $btn = $(this);
        if ($btn.attr('data-disabled') === '1' || $btn.attr('aria-disabled') === 'true' || $btn.hasClass('disabled')) {
            e.preventDefault();
            return false; // blocked when disabled
        }
        var examId = $btn.attr("data-resume-exam-id");
        var questionId = $btn.attr("data-resume-question-id");
        window.location.href = '/Assessment/Index' + '?ExamId=' + examId + '&Questionid=' + questionId;
    });
    // ---------- END CHANGE ----------

    // End of Exam progress list 
    $(document).on('click', "#closeButtonNav", function () {
        $("#authors").fadeOut("slow").remove();
        $('body').removeClass('my-body-noscroll-class');
        $('#optInDialog').modal('show');
        $("#authors").remove();
    });

});

function DrawCumulativeChart() {

    var examType = $('#ChartTypeId').val();
    var toggleValue = $('#toggle-switch1').is(":checked");
    if (!toggleValue) {
        //var startDate;
        //var endDate;
        //var report = $('#reportrange').text();
        //if (report.trim() == '' || report.trim() == "Select Date Range")
        //{        
        //    startDate = null;
        //    endDate = null;      
        //}
        //else {
        //    var dateParts = report.split(' To ');      
        //    startDate = dateParts[0];
        //    endDate = dateParts[1];      
        //}
        $('#Chart2').hide();
        $('.loader_main').fadeIn(100);
        var startDate;
        var endDate;
        var report = $('#reportrange').text();
        if (report.trim() == '') {
            startDate = null;
            endDate = null;

        }
        else {
            var dateParts = report.split(' To ');
            startDate = dateParts[0];
            endDate = dateParts[1];
        }


        var jsonData = $.ajax({
            url: DashboardGoogleChart.url,
            type: 'GET',
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: { scoreCompWithPeers: toggleValue, examType: examType, fromDate: startDate, toDate: endDate },
            cache: false,
            success: function (result) {
                $('#Chart1').empty();
                $('.loader_main').fadeOut(100);
                var trHTML = '';
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'BcscSection');
                data.addColumn('number', 'Correct');
                data.addColumn('number', 'Incorrect');
                data.addColumn('number', 'Remaining');
                data.addColumn({ name: 'Total', type: 'string', role: 'annotation' });
                $.each(result, function (key, value) {
                    data.addRow([value.SubSpecialityName, value.Correct, value.Incorrect, value.Remaining, '']);

                    trHTML += '<tr><td data-title="Specialty">' + value.SubSpecialityName + '</td><td data-title="Correct" class="font-green">' + value.Correct + '</td><td data-title="Incorrect" class="font-red">' + value.Incorrect + '</td><td data-title="Remaining">' + value.Remaining + '</td><td data-title="Total">' + value.Total + '</td></tr>';


                })

                $('#Chart1').append(trHTML);
                $("#Chart1").show();

                var view = new google.visualization.DataView(data);
                view.setColumns([0,
                    1, {
                        calc: function (dt, row) {
                            return dt.getValue(row, 1);
                        },
                        type: "number",
                        role: "annotation"
                    },
                    2, {
                        calc: function (dt, row) {
                            return dt.getValue(row, 2);
                        },
                        type: "number",
                        role: "annotation"
                    },

                    3, {
                        calc: function (dt, row) {
                            return dt.getValue(row, 3);
                        },
                        type: "number",
                        role: "annotation"
                    },
                    {
                        calc: function (dt, row) {
                            return 0;
                        },
                        label: "Total",
                        type: "number",
                    }/*,
                     {
                        calc: function (dt, row) {
                            return dt.getValue(row, 1) + dt.getValue(row, 2) + dt.getValue(row, 3);
                        },
                        type: "number",
                        role: "annotation"
                    }*/
                ]);
                var options = {
                    animation: {
                        duration: 0,
                        easing: 'out',
                        startup: true
                    },
                    /* title: 'Exam History',*/
                    'chartArea': { 'width': '70%', 'height': '80%' },
                    backgroundColor: 'transparent',
                    // vAxis: { title: "BCSC Sectios", titleTextStyle: { italic: false } },
                    hAxis: { title: "Total Questions", titleTextStyle: { italic: false } },
                    colors: ['#a9c23f', '#d05a57', '#ddddde', '#f15a22'],
                    backgroundColor: { fill: '#ffffff' },
                    height: 600,
                    width: '100%',
                    legend: { position: 'none' },
                    bar: { groupWidth: '60%', groupHeight: '60%' },
                    fontSize: 12,
                    isStacked: true
                };
                var chart = new google.visualization.BarChart(document.getElementById('CommulativePerformance_chart'));
                chart.draw(view, options);
            }
        });

    } else {
        $('.loader_main').fadeIn(100);
        $('#Chart1').hide();
        var startDate;
        var endDate;
        var report = $('#reportrange').text();
        if (report.trim() == '') {
            startDate = null;
            endDate = null;

        }
        else {
            var dateParts = report.split('To');
            startDate = dateParts[0];
            endDate = dateParts[1];
        }
        var jsonData = $.ajax({
            url: DashboardGoogleChart.url,
            type: 'GET',
            dataType: "json",
            contentType: "application/json; charset=utf-8",
            data: { scoreCompWithPeers: toggleValue, examType: examType, fromDate: startDate, toDate: endDate },
            cache: false,
            success: function (result) {
                var data = new google.visualization.DataTable();
                $('.loader_main').fadeOut(100);
                $('#Chart2').empty();
                //  $('#Chart1').hide();
                var trHtmlrow2 = '';
                data.addColumn('string', 'BcscSection');
                data.addColumn('number', 'Self');
                data.addColumn('number', 'Peer');
                data.addColumn({ name: 'Total', type: 'string', role: 'annotation' });
                $.each(result, function (key, value) {
                    data.addRow([value.SubSpecialityName, value.SelfScore, value.PeerScore, '']);
                    trHtmlrow2 += '<tr><td data-title="Specialty">' + value.SubSpecialityName + '</td><td data-title="My Score" class="font-green">' + value.SelfScore + '</td><td data-title="Avg.Peer Score" class="font-red">' + value.PeerScore + '</td></tr>';

                })

                $('#Chart2').append(trHtmlrow2);
                $("#Chart2").show();

                var view = new google.visualization.DataView(data);
                view.setColumns([0,
                    1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    },
                    2,
                    {
                        calc: "stringify",
                        sourceColumn: 2,
                        type: "string",
                        role: "annotation"
                    },
                ]);
                var options = {
                    width: '100%',
                    height: 900,
                    //legend: { position: 'top', maxLines: 3 },
                    //tooltip: {isHtml: true},
                    legend: 'none',
                    bar: { groupWidth: '80%', groupHeight: '80%' },
                    fontSize: 12,
                    tooltip: false,
                    //bar: { groupWidth: '90%', groupHeight: '90%' },
                    isStacked: false,
                    backgroundColor: 'transparent',
                    //     vAxis: { title: "BCSC Sectios" ,titleTextStyle:{ italic:false }},
                    hAxis: { title: "Percent Correct", titleTextStyle: { italic: false } },
                    colors: ['#a9c23f', '#d05a57', '#ddddde', '#f15a22'],
                    backgroundColor: { fill: '#ffffff' },
                    'chartArea': { 'width': '70%', 'height': '80%' },
                };
                var chart = new google.visualization.BarChart(document.getElementById("CommulativePerformance_chart"));
                chart.draw(view, options);
            }
        });

    }

}

// Peers comparion chart
function DrawPeerChart() {
    var examType = $('#ChartTypeId').val();
    var toggleValue = $('#toggle-switch1').is(":checked");
    var startDate;
    var endDate;
    var report = $('#reportrange').text();
    if (report.trim() == '' || report.trim() == "Select Date Range") {
        startDate = null;
        endDate = null;
    }
    else {
        var dateParts = report.split(' To ');
        startDate = dateParts[0].trim();
        endDate = dateParts[1].trim();
    }
    var jsonData = $.ajax({
        url: DashboardGoogleChart.url,
        type: 'POST',
        dataType: "json",
        data: { scoreCompWithPeers: toggleValue, examType: examType, fromDate: startDate, toDate: endDate },
        cache: false,
        success: function (result) {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'BcscSection');
            data.addColumn('number', 'Self');
            data.addColumn('number', 'Peer');
            data.addColumn({ name: 'Total', type: 'string', role: 'annotation' });
            $.each(result, function (key, value) {
                data.addRow([value.SubSpecialityName, value.SelfScore, value.PeerScore, '']);
            })

            var view = new google.visualization.DataView(data);
            view.setColumns([0,
                1,
                {
                    calc: "stringify",
                    sourceColumn: 1,
                    type: "string",
                    role: "annotation"
                },
                2,
                {
                    calc: "stringify",
                    sourceColumn: 2,
                    type: "string",
                    role: "annotation"
                },
            ]);
            var options = {
                width: '100%',
                height: 700,
                //legend: { position: 'top', maxLines: 3 },
                //tooltip: {isHtml: true},
                legend: 'none',
                bar: { groupWidth: '60%', groupHeight: '60%' },
                fontSize: 12,
                tooltip: false,
                //bar: { groupWidth: '90%', groupHeight: '90%' },
                isStacked: false,
                backgroundColor: 'transparent',
                //     vAxis: { title: "BCSC Sectios" ,titleTextStyle:{ italic:false }},
                hAxis: { title: "Percent Correct", titleTextStyle: { italic: false } },
                colors: ['#a9c23f', '#d05a57', '#ddddde', '#f15a22'],
                backgroundColor: { fill: '#ffffff' },
                'chartArea': { 'width': '70%', 'height': '80%' },
            };
            var chart = new google.visualization.BarChart(document.getElementById("CommulativePerformance_chart"));
            chart.draw(view, options);
        }
    });
}
var resizeTimeout;
$(window).resize(function () {
    clearTimeout(resizeTimeout);
    resizeTimeout = setTimeout(function () {
        DrawCumulativeChart();
    }, 500);
});