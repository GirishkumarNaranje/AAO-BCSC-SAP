(function () {

    //Remove Shared Exam Data
    localStorage.removeItem('examQuestionLimit');
    localStorage.removeItem('selectedQuestionIds');
    sessionStorage.removeItem('examQuestionLimit');
    sessionStorage.removeItem('selectedQuestionIds');
    sessionStorage.removeItem('buildExamFormData');
    sessionStorage.removeItem('cameFromSearchPage');

    // ---------- CHANGE: TIMEZONE + DATE HELPERS (ADDED) ----------
    // Helpers to parse DB dates, convert to viewer timezone for display,
    // and convert source-day moments to UTC for canonical comparisons.

    // viewerTz: guessed user timezone (from layout helper window.getViewerTz or moment.tz)
    var viewerTz = (window.getViewerTz && window.getViewerTz()) || (moment.tz && moment.tz.guess && moment.tz.guess()) || 'UTC';

    // sourceTz: the timezone that date-only strings from DB should be interpreted as.
    // Change this to your server/creator timezone if DB date-only values are in that TZ.
    var sourceTz = 'UTC'; // <-- adjust if DB date-only strings represent another timezone

    function hasDateValue(v) {
        if (v === null || v === undefined) return false;
        if (typeof v === 'string') return v.trim() !== '';
        if (typeof v === 'number') return true;
        if (Object.prototype.toString.call(v) === '[object Date]') return !isNaN(v.getTime());
        if (moment && moment.isMoment && moment.isMoment(v)) return v.isValid();
        return !!v;
    }

    // Parse a date-only string (DD/MM/YYYY, MM/DD/YYYY, YYYY-MM-DD, "Dec 11 2025", etc.)
    // and interpret it as midnight in sourceTz. Returns a moment at that midnight (sourceTz).
    function parseDateOnlyAsSource(dateStr) {
        if (!hasDateValue(dateStr)) return null;
        var formats = ["DD/MM/YYYY", "MM/DD/YYYY", "YYYY-MM-DD", "MMM DD YYYY"];
        var m = moment.tz(dateStr, formats, true, sourceTz);
        if (m && m.isValid()) return m.startOf('day');
        // fallback: try a non-strict parse in sourceTz
        m = moment.tz(dateStr, sourceTz);
        return (m && m.isValid()) ? m.startOf('day') : null;
    }

    // Flexible parser for possible server values: /Date(...)/, epoch ms, ISO, Date object, or date-only strings.
    // Returns a moment presented in viewerTz (ready for display).
    function parseFlexibleToViewer(dateInput) {
        if (!hasDateValue(dateInput)) return null;
        // If it's already a moment, present in viewer tz
        if (moment.isMoment && moment.isMoment(dateInput)) return dateInput.clone().tz(viewerTz);

        // Date object
        if (Object.prototype.toString.call(dateInput) === '[object Date]') return moment(dateInput).tz(viewerTz);

        var s = dateInput.toString();

        // Microsoft JSON /Date(1234567890)/
        var msMatch = /\/Date\((-?\d+)\)\//.exec(s);
        if (msMatch) return moment.utc(parseInt(msMatch[1], 10)).tz(viewerTz);

        // Epoch milliseconds
        if (/^\d+$/.test(s)) return moment.utc(parseInt(s, 10)).tz(viewerTz);

        // Try date-only interpreted in sourceTz (preferred)
        var src = parseDateOnlyAsSource(s);
        if (src) return src.clone().tz(viewerTz);

        // Last fallback: generic moment parse, then present in viewer tz
        var m = moment(s);
        return (m && m.isValid()) ? m.clone().tz(viewerTz) : null;
    }

    function fmtForViewer(momentObj) {
        return momentObj ? momentObj.clone().tz(viewerTz).format('MMM DD YYYY') : '';
    }

    // Convert a source-day moment (sourceTz midnight) to a UTC moment for canonical comparison.
    function toUtcMoment(momentObj) {
        return momentObj ? momentObj.clone().utc() : null;
    }
    // ---------- END HELPERS ----------

    var Status = $('#Status option:selected').val();
    var Filter = "All";
    var i = 0;
    $('#ExamHistoryTable').DataTable({
        "language": {
            "lengthMenu": "Show _MENU_ exams",
            "sEmptyTable": "No Records found",
            "info": "Showing _START_ - _END_ of _TOTAL_ entries",
            "paginate": {
                "previous": "Prev"
            }
        },
        "processing": true,
        "serverSide": true,
        "filter": false,
        "orderMulti": false,
        "scrollX": false,
        "responsive": true,
        "ajax": {
            "data": { Status: Status },
            "url": '/ExamHistory/ExamHistoryDetails',
            "type": "POST",
            "datatype": "json",
        },
        "columns": [
            {
                data: null, "bSortable": false, render: function (data, type, row) {

                    var showDetailedAnswers = data.ShowDetailedAnswers;

                    if (data.ShowAnsAfterExamCompletion && data.ExamEndDate && data.ExamLastAttemptDate) {
                        var today = moment().format('DD/MM/YYYY');
                        var examEndDate = moment(data.ExamEndDate, "DD/MM/YYYY").format('DD/MM/YYYY');

                        // Show detailed answers only if today's date is after ExamEndDate
                        showDetailedAnswers = data.ShowDetailedAnswers &&
                            (moment(today, "DD/MM/YYYY").isAfter(moment(examEndDate, "DD/MM/YYYY")));
                    }
                    if (data.IsOriginator) {
                        showDetailedAnswers = true;
                    }

                    if (data.IsSharedExam) {
                        //Console.log('IsSharedExam');
                        if (data.ExamStatus == 2 && showDetailedAnswers == true && data.ExamTimeType == true) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-clock-o marleft10" style="color:#337ab7"></i>';
                        }
                        if (data.ExamStatus == 2 && showDetailedAnswers == true && data.ExamMode == 1) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-flag-checkered marleft10" style="color:#337ab7"></i>';
                        }
                        if (data.ExamStatus == 2 && showDetailedAnswers == true) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>'
                        }
                        else {
                            if (data.ExamTimeType == true) {
                                return data.ExamName + '<i class="fa fa-clock-o marleft10"></i>'
                            }
                            if (data.ExamMode == 1) {
                                return data.ExamName + '<i class="fa fa-flag-checkered marleft10"></i>'
                            }
                            return data.ExamName;
                        }
                    } else {
                        if (data.ExamStatus == 2 && data.ExamTimeType == true) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-clock-o marleft10" style="color:#337ab7"></i>';
                        }
                        if (data.ExamStatus == 2 && data.ExamMode == 1) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-flag-checkered marleft10" style="color:#337ab7"></i>';
                        }
                        if (data.ExamStatus == 2) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>'
                        }
                        else {
                            if (data.ExamTimeType == true) {
                                return data.ExamName + '<i class="fa fa-clock-o marleft10"></i>'
                            }
                            if (data.ExamMode == 1) {
                                return data.ExamName + '<i class="fa fa-flag-checkered marleft10"></i>'
                            }
                            return data.ExamName;
                        }
                    }
                }
            },

            { "data": "ExamType", "bSortable": false },
            {

                data: null, "bSortable": false, render: function (data, type, row) {
                    var width = 0;
                    width = Math.round(data.QuestionAttempt / data.NoofQuestions * 100);
                    if (data.ExamStatus == 2) {

                        return '<div class="progress-custom"><div class="progress"><div class="progress-bar progress-green"  style="width: 100%;" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div></div></div>' + '<div class="progress-value" style="font-size: 12px;">' + data.QuestionAttempt + ' /' + data.NoofQuestions + '</div>';
                    }
                    else {
                        return '<div class="progress-custom"><div class="progress"><div class="progress-bar progress-orange"  style="width: ' + width + '%;" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div></div></div>' + '<div class="progress-value" style="font-size: 12px;">' + data.QuestionAttempt + ' /' + data.NoofQuestions + '</div>';
                    }
                }
            },
            {
                data: null, "bSortable": false, render: function (data, type, row) {
                    return data.Score + '%';
                }
            },
            {
                data: null,
                targets: 0,
                "bSortable": false,
                "render": function (data, type, row) {
                    var dateToFormat;

                    if (row.IsSharedExam == true && row.ExamStartDate) {
                        dateToFormat = row.ExamStartDate;
                    } else {
                        dateToFormat = row.ExamCreatedDate;
                    }

                    //console.log("dateToFormat - FromDB - UTC:", dateToFormat);

                    // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                    const [datePart, timePart, period] = dateToFormat.split(' ');
                    const [day, month, year] = datePart.split('-');
                    const [hours, minutes, seconds] = timePart.split(':');

                    // Convert 12-hour to 24-hour format
                    let adjustedHours = parseInt(hours);
                    if (period === 'PM' && adjustedHours !== 12) {
                        adjustedHours += 12;
                    } else if (period === 'AM' && adjustedHours === 12) {
                        adjustedHours = 0;
                    }

                    //console.log("adjustedHours", adjustedHours);

                    // Create date object treating the input as UTC
                    const utcDateString = `${year}-${month}-${day}T${String(adjustedHours).padStart(2, '0')}:${minutes}:${seconds}Z`;
                    const date = new Date(utcDateString);

                    //console.log("utcDateString :", utcDateString);
                    //console.log("date :", date);

                    // JavaScript automatically converts to local timezone when you use toLocaleDateString
                    const formattedDate = date.toLocaleDateString('en-US', {
                        year: 'numeric',
                        month: 'short',
                        day: 'numeric'
                    }).replace(',', '');

                    //console.log("formattedDate :",formattedDate); // Output: Jan 24 2026 (converted to local timezone)

                    return formattedDate;
                }
            },
            {
                data: null,
                "bSortable": false,
                render: function (data, type, row) {
                    if (data.ExamStatus == 2) {
                        var dateString = data.ExamLastAttemptDate;
                        //console.log("dateString - UTC from DB: ", dateString);
                        // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                        const [datePart, timePart, period] = dateString.split(' ');
                        const [day, month, year] = datePart.split('-');
                        const [hours, minutes, seconds] = timePart.split(':');

                        // Convert 12-hour to 24-hour format
                        let adjustedHours = parseInt(hours);
                        if (period === 'PM' && adjustedHours !== 12) {
                            adjustedHours += 12;
                        } else if (period === 'AM' && adjustedHours === 12) {
                            adjustedHours = 0;
                        }

                        //console.log("adjustedHours", adjustedHours);

                        // Create date object treating the input as UTC
                        const utcDateString = `${year}-${month}-${day}T${String(adjustedHours).padStart(2, '0')}:${minutes}:${seconds}Z`;
                        const date = new Date(utcDateString);

                        //console.log("date - local :", date);

                        // JavaScript automatically converts to local timezone when you use toLocaleDateString
                        const formattedDate = date.toLocaleDateString('en-US', {
                            year: 'numeric',
                            month: 'short',
                            day: 'numeric'
                        }).replace(',', '');

                        //console.log(formattedDate); // Output: Jan 24 2026 (converted to local timezone)

                        return formattedDate;

                    }
                    else {
                        return ""
                    }

                }
            },

            {
                data: null,"bSortable": false, render: function (data, type, row) {
                    if (data.IsSharedExam == 1 && data.ExamEndDate) {
                        var dateString = data.ExamEndDate;
                        //console.log("dateString - UTC from DB: ", dateString);
                        // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                        const [datePart, timePart, period] = dateString.split(' ');
                        const [day, month, year] = datePart.split('-');
                        const [hours, minutes, seconds] = timePart.split(':');

                        // Convert 12-hour to 24-hour format
                        let adjustedHours = parseInt(hours);
                        if (period === 'PM' && adjustedHours !== 12) {
                            adjustedHours += 12;
                        } else if (period === 'AM' && adjustedHours === 12) {
                            adjustedHours = 0;
                        }

                        //console.log("adjustedHours", adjustedHours);

                        // Create date object treating the input as UTC
                        const utcDateString = `${year}-${month}-${day}T${String(adjustedHours).padStart(2, '0')}:${minutes}:${seconds}Z`;
                        const date = new Date(utcDateString);

                        //console.log("date - local :", date);

                        // JavaScript automatically converts to local timezone when you use toLocaleDateString
                        const formattedDate = date.toLocaleDateString('en-US', {
                            year: 'numeric',
                            month: 'short',
                            day: 'numeric'
                        }).replace(',', '');

                        //console.log(formattedDate); // Output: Jan 24 2026 (converted to local timezone)

                        return formattedDate;

                    }
                    else {
                        return ""
                    }
                }
            },
            {
                data: null, "bSortable": false,render: function (data, type, row) {
                    // CHANGE: Compare using UTC-day semantics by converting source-day to UTC then comparing

                    // Check if it's a shared exam and if today's date matches exam start date
                    if (data.IsSharedExam == true && data.ExamStartDate && data.ExamEndDate) {
                        //var sdSource = parseDateOnlyAsSource(data.ExamStartDate); // sourceTz midnight
                        //var edSource = parseDateOnlyAsSource(data.ExamEndDate);
                        //
                        //var sdUtc = sdSource ? toUtcMoment(sdSource) : null;
                        //var edUtc = edSource ? toUtcMoment(edSource) : null;
                        //var todayUtc = moment.utc().startOf('day');
                        //
                        //console.log("data.ExamStartDate :", data.ExamStartDate);
                        //console.log("sdUtc :", sdUtc);
                        //
                        //if (sdUtc && todayUtc.isBefore(sdUtc)) {
                        //    if (!data.IsOriginator) {
                        //        return '<small>Actions available on Start Date</small>';
                        //    }
                        //}

                        //console.log("data.ExamStartDate :", data.ExamStartDate);

                        var dateToFormat_sd = row.ExamStartDate;
                        var dateToFormat_ed = row.ExamEndDate;

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

                        //console.log("date_sd :", date_sd);
                        //console.log("date_ed :", date_ed);

                        // Create moment objects for date-only comparison
                        const examDateMoment_sd = moment(date_sd); // Converts to local timezone
                        const examDateMoment_ed = moment(date_ed); // Converts to local timezone

                        const todayMoment = moment(); // Current date/time in local timezone

                        //console.log("examDateMoment :", examDateMoment_sd);
                        //console.log("examDateMoment :", examDateMoment_ed);
                        //console.log("todayMoment :", todayMoment);

                        // Check if today's date is before exam date (date-only comparison)
                        if (examDateMoment_sd && todayMoment.isBefore(examDateMoment_sd, 'day')) {
                            //console.log("Current date is before exam date");
                            return '<small>Actions available on Start Date</small>';
                        } 

                        /*if (edUtc && todayUtc.isAfter(edUtc)) {
                            if (!data.IsOriginator) {
                                // non-originator: exam closed
                                if (data.ExamStatus == 2) {
                                    return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset marright10" id="share"><i class="fa fa-envelope text-center"></i></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                                }
                                else {
                                    return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                                }
                            }
                        }*/

                        if (examDateMoment_ed && todayMoment.isAfter(examDateMoment_ed, 'day')) {
                            if (!data.IsOriginator) {
                                // non-originator: exam closed
                                if (data.ExamStatus == 2) {
                                    return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset marright10" id="share"><i class="fa fa-envelope text-center"></i></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                                }
                                else {
                                    return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                                }
                            }
                        }

                    }

                    if (data.ExamStatus == 1) {
                        return '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"><i class="fa fa-arrow-right text-center"></i></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                    }
                    if (data.ExamStatus == 2) {
                        return '<a href="#" examId=' + data.ExamId + ' class="editAsset marright10" id="share"><i class="fa fa-envelope text-center"></i></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';

                    }
                    if (data.ExamStatus == 0) {
                        return null;
                    }
                }
            }
        ],
    });
})();

$("#Reset").on('click', function () {
    getConfirmations();
    function getConfirmations() {
        var retVal = $("#resetExam").modal("show");
        $(".deleted").click(function () {
            $('#loader_resetExam').fadeIn(100);
            $.ajax({
                type: 'POST',
                url: '/ExamHistory/ResetExam',
                success: function (result) {
                    if (result == 0) {
                        window.location.reload();
                    }
                }
            });
        });
    }
});

$("#NoteBook").on('click', function () {
    document.location = Url.Action("Index", "NoteBook");
});

$('#Status').on('change', function () {
    $('#ExamHistoryTable').dataTable().fnDestroy();
    var Status = $('#Status option:selected').val();
    var Filter = $('#Status option:selected').val();
    $('#ExamHistoryTable').DataTable({
        "language": {
            "lengthMenu": "Show _MENU_ exams",
            "sEmptyTable": "No Records found",
            "info": "Showing _START_ - _END_ of _TOTAL_ entries",
            "paginate": {
                "previous": "Prev"
            }
        },
        "processing": true,
        "serverSide": true,
        "filter": false,
        "orderMulti": false,
        "scrollX": false,
        "responsive": true,
        "ajax": {
            "data": { Status: Status },
            "url": '/ExamHistory/ExamHistoryDetails',
            "type": "POST",
            "datatype": "json",
        },
        "columns": [
            {

                data: null,"bSortable": false, render: function (data, type, row) {
                    // Check if ShowDetailedAnswers should be considered true based on ShowAnsAfterExamCompletion toggle
                    /*var showDetailedAnswers = data.ShowDetailedAnswers;
                    if (data.ShowAnsAfterExamCompletion && data.ExamLastAttemptDate) {
                        var today = moment().format('DD/MM/YYYY');
                        var lastAttemptDate = moment(data.ExamLastAttemptDate, "DD/MM/YYYY").format('DD/MM/YYYY');
                        showDetailedAnswers = data.ShowDetailedAnswers && (moment(lastAttemptDate, "DD/MM/YYYY").isSameOrBefore(moment(today, "DD/MM/YYYY")));
                    }*/

                    var showDetailedAnswers = data.ShowDetailedAnswers;

                    if (data.ShowAnsAfterExamCompletion && data.ExamEndDate && data.ExamLastAttemptDate) {
                        var today = moment().format('DD/MM/YYYY');
                        var examEndDate = moment(data.ExamEndDate, "DD/MM/YYYY").format('DD/MM/YYYY');

                        // Show detailed answers only if today's date is after ExamEndDate
                        showDetailedAnswers = data.ShowDetailedAnswers &&
                            (moment(today, "DD/MM/YYYY").isAfter(moment(examEndDate, "DD/MM/YYYY")));
                    }
                    if (data.IsOriginator) {
                        showDetailedAnswers = true;
                    }

                    if (data.IsSharedExam) {
                        if (data.ExamStatus == 2 && showDetailedAnswers == true && data.ExamTimeType == true) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-clock-o marleft10" style="color:#337ab7"></i>';

                        }
                        if (data.ExamStatus == 2 && showDetailedAnswers == true && data.ExamMode == 1) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-flag-checkered marleft10" style="color:#337ab7"></i>';
                        }
                        if (data.ExamStatus == 2 && showDetailedAnswers == true) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>'
                        }
                        else {
                            if (data.ExamTimeType == true) {
                                return data.ExamName + '<i class="fa fa-clock-o marleft10"></i>'
                            }
                            if (data.ExamMode == 1) {
                                return data.ExamName + '<i class="fa fa-flag-checkered marleft10"></i>'
                            }
                            return data.ExamName;
                        }
                    } else {
                        if (data.ExamStatus == 2 && data.ExamTimeType == true) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-clock-o marleft10" style="color:#337ab7"></i>';

                        }
                        if (data.ExamStatus == 2 && data.ExamMode == 1) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>' + '<i class="fa fa-flag-checkered marleft10" style="color:#337ab7"></i>';
                        }
                        if (data.ExamStatus == 2) {
                            return '<a href="/ViewAssessment/FilterByQuestions?ExamId=' + data.ExamId + '&Filter=' + Filter + '" class="editAsset">' + data.ExamName + '</a>'
                        }
                        else {
                            if (data.ExamTimeType == true) {
                                return data.ExamName + '<i class="fa fa-clock-o marleft10"></i>'
                            }
                            if (data.ExamMode == 1) {
                                return data.ExamName + '<i class="fa fa-flag-checkered marleft10"></i>'
                            }
                            return data.ExamName;
                        }
                    }
                }
            },

            { "data": "ExamType", "bSortable": false },
            {
                data: null, "bSortable": false, render: function (data, type, row) {
                    var width = 0;
                    width = Math.round(data.QuestionAttempt / data.NoofQuestions * 100);
                    if (data.ExamStatus == 2) {
                        return '<div class="progress-custom"><div class="progress"><div class="progress-bar progress-green"  style="width: 100%;" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div></div></div>' + '<div class="progress-value" style="font-size: 12px;">' + data.QuestionAttempt + ' /' + data.NoofQuestions + '</div>';
                    }
                    else {
                        return '<div class="progress-custom"><div class="progress"><div class="progress-bar progress-orange"  style="width: ' + width + '%;" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div></div></div>' + '<div class="progress-value" style="font-size: 12px;">' + data.QuestionAttempt + ' /' + data.NoofQuestions + '</div>';
                    }
                }
            },
            {
                data: null, "bSortable": false, render: function (data, type, row) {

                    return data.Score + '%';
                }
            },
            {
                data: null,
                targets: 0,
                "bSortable": false,
                "render": function (data, type, row) {
                    var dateToFormat;

                    if (row.IsSharedExam == true && row.ExamStartDate) {
                        dateToFormat = row.ExamStartDate;
                        //console.log("dateToFormat - ExamStartDate - UTC:", dateToFormat);
                    } else {
                        dateToFormat = row.ExamCreatedDate;
                        //console.log("dateToFormat -ExamCreatedDate - UTC:", dateToFormat);
                    }

                    // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                    const [datePart, timePart, period] = dateToFormat.split(' ');
                    const [day, month, year] = datePart.split('-');
                    const [hours, minutes, seconds] = timePart.split(':');

                    // Convert 12-hour to 24-hour format
                    let adjustedHours = parseInt(hours);
                    if (period === 'PM' && adjustedHours !== 12) {
                        adjustedHours += 12;
                    } else if (period === 'AM' && adjustedHours === 12) {
                        adjustedHours = 0;
                    }

                    //console.log("adjustedHours", adjustedHours);

                    // Create date object treating the input as UTC
                    const utcDateString = `${year}-${month}-${day}T${String(adjustedHours).padStart(2, '0')}:${minutes}:${seconds}Z`;
                    const date = new Date(utcDateString);

                    //console.log("date - local :", date);

                    // JavaScript automatically converts to local timezone when you use toLocaleDateString
                    const formattedDate = date.toLocaleDateString('en-US', {
                        year: 'numeric',
                        month: 'short',
                        day: 'numeric'
                    }).replace(',', '');

                    //console.log(formattedDate); // Output: Jan 24 2026 (converted to local timezone)

                    return formattedDate;
                }
            },

            {
                data: null, "bSortable": false,render: function (data, type, row) {

                    if (data.ExamStatus == 2) {
                        var dateString = data.ExamLastAttemptDate;
                        //console.log("dateString - UTC from DB: ", dateString);
                        // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                        const [datePart, timePart, period] = dateString.split(' ');
                        const [day, month, year] = datePart.split('-');
                        const [hours, minutes, seconds] = timePart.split(':');

                        // Convert 12-hour to 24-hour format
                        let adjustedHours = parseInt(hours);
                        if (period === 'PM' && adjustedHours !== 12) {
                            adjustedHours += 12;
                        } else if (period === 'AM' && adjustedHours === 12) {
                            adjustedHours = 0;
                        }

                        //console.log("adjustedHours", adjustedHours);

                        // Create date object treating the input as UTC
                        const utcDateString = `${year}-${month}-${day}T${String(adjustedHours).padStart(2, '0')}:${minutes}:${seconds}Z`;
                        const date = new Date(utcDateString);

                        //console.log("date - local :", date);

                        // JavaScript automatically converts to local timezone when you use toLocaleDateString
                        const formattedDate = date.toLocaleDateString('en-US', {
                            year: 'numeric',
                            month: 'short',
                            day: 'numeric'
                        }).replace(',', '');

                        //console.log(formattedDate); // Output: Jan 24 2026 (converted to local timezone)

                        return formattedDate;
                    }
                    else {
                        return ""
                    }
                }
            },
            {
                data: null, "bSortable": false, render: function (data, type, row) {
                    if (data.IsSharedExam == 1 && data.ExamEndDate) {
                        var dateString = data.ExamEndDate;
                        //console.log("dateString - UTC from DB: ", dateString);
                        // Parse DD-MM-YYYY HH:MM:SS format (incoming UTC)
                        const [datePart, timePart, period] = dateString.split(' ');
                        const [day, month, year] = datePart.split('-');
                        const [hours, minutes, seconds] = timePart.split(':');

                        // Convert 12-hour to 24-hour format
                        let adjustedHours = parseInt(hours);
                        if (period === 'PM' && adjustedHours !== 12) {
                            adjustedHours += 12;
                        } else if (period === 'AM' && adjustedHours === 12) {
                            adjustedHours = 0;
                        }

                        //console.log("adjustedHours", adjustedHours);

                        // Create date object treating the input as UTC
                        const utcDateString = `${year}-${month}-${day}T${String(adjustedHours).padStart(2, '0')}:${minutes}:${seconds}Z`;
                        const date = new Date(utcDateString);

                        //console.log("date - local :", date);

                        // JavaScript automatically converts to local timezone when you use toLocaleDateString
                        const formattedDate = date.toLocaleDateString('en-US', {
                            year: 'numeric',
                            month: 'short',
                            day: 'numeric'
                        }).replace(',', '');

                        //console.log(formattedDate); // Output: Jan 24 2026 (converted to local timezone)

                        return formattedDate;
                    }
                    else {
                        return ""
                    }
                }
            },

            {
                data: null, "bSortable": false, render: function (data, type, row) {
                    // CHANGE: Compare using UTC-day semantics by converting source-day to UTC then comparing

                    // Check if it's a shared exam and if today's date matches exam start date
                    if (data.IsSharedExam == true && data.ExamStartDate && data.ExamEndDate) {
                        /*var sdSource = parseDateOnlyAsSource(data.ExamStartDate); // sourceTz midnight
                        var edSource = parseDateOnlyAsSource(data.ExamEndDate);

                        var sdUtc = sdSource ? toUtcMoment(sdSource) : null;
                        var edUtc = edSource ? toUtcMoment(edSource) : null;
                        var todayUtc = moment.utc().startOf('day');

                        if (sdUtc && todayUtc.isBefore(sdUtc)) {
                            return '<small>Actions available on Start Date</small>';
                        }*/
                        /*if (edUtc && todayUtc.isAfter(edUtc)) {
                            *//*return '<small>Exam Closed</small>';*//*
                            if (data.ExamStatus == 2) {
                                return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset marright10" id="share"><i class="fa fa-envelope text-center"></i></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                            }
                            else {
                                return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                            }
                        }*/

                        var dateToFormat_sd = row.ExamStartDate;
                        var dateToFormat_ed = row.ExamEndDate;

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

                        //console.log("date_sd :", date_sd);
                        //console.log("date_ed :", date_ed);

                        // Create moment objects for date-only comparison
                        const examDateMoment_sd = moment(date_sd); // Converts to local timezone
                        const examDateMoment_ed = moment(date_ed); // Converts to local timezone

                        const todayMoment = moment(); // Current date/time in local timezone

                        //console.log("examDateMoment :", examDateMoment_sd);
                        //console.log("examDateMoment :", examDateMoment_ed);
                        //console.log("todayMoment :", todayMoment);

                        // Check if today's date is before exam date (date-only comparison)
                        if (examDateMoment_sd && todayMoment.isBefore(examDateMoment_sd, 'day')) {
                            //console.log("Current date is before exam date");
                            return '<small>Actions available on Start Date</small>';
                        }

                        if (examDateMoment_ed && todayMoment.isAfter(examDateMoment_ed, 'day')) {
                            if (!data.IsOriginator) {
                                // non-originator: exam closed
                                if (data.ExamStatus == 2) {
                                    return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset marright10" id="share"><i class="fa fa-envelope text-center"></i></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                                }
                                else {
                                    return '<small>Exam Closed</small> &nbsp; <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center"></i></a>';
                                }
                            }
                        }
                    }

                    if (data.ExamStatus == 1) {
                        return '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"><i class="fa fa-arrow-right text-center"></i></a>  <a href="#"  examId=' + data.ExamId + ' class="editAsset" id="delete"><i class="fa fa-trash-o text-center deleteLink"></i></a>';

                    }
                    if (data.ExamStatus == 2) {
                        return '<a href="#" examId=' + data.ExamId + ' class="editAsset marright10" id="share"><i class="fa fa-envelope text-center"></i></a>  <a href="#"  examId=' + data.ExamId + ' class="editAsset" id="delete"  ><i class="fa fa-trash-o text-center"></i></a>';

                    }
                    if (data.ExamStatus == 0) {
                        return null;
                    }
                }
            }
        ],
    });
});

$('#ExamHistoryTable tbody').on('click', '#share', function () {
    var myBookId = $(this).attr('examId');
    $(".modal-body #feedbackexamId").val(myBookId);
    $("#error").css("display", "none");
    $("#error1").css("display", "none");
    $(".modal-body #email").val('');
    $('#DescModal').modal("show");
});

$('#ExamHistoryTable tbody').on('click', '#delete', function () {
    var ExamId = $(this).attr('examId');
    getConfirmation(ExamId);
    function getConfirmation(ExamId) {
        var retVal = $("#deleteButton").modal("show");
        $(".deleted").click(function () {
            window.location.href = '/ExamHistory/DeleteExamHistoryDetails?ExamId=' + ExamId;
        });
    }
});

function trim(str, chars) {
    return ltrim(rtrim(str, chars), chars);
}
function ltrim(str, chars) {
    chars = chars || "\\s";
    return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}
function rtrim(str, chars) {
    chars = chars || "\\s";
    return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}
//I modified the regex.
function validateEmail(field) {
    //var regex=/\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i;
    var regex = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    return (regex.test(trim(field))) ? true : false;
}
function validateMultipleEmailsCommaSeparated(value) {
    var result = value.split(",");
    for (var i = 0; i < result.length; i++)
        if (!validateEmail(result[i]))
            return false;
    return true;
}

$(".sharefeedback").click(function () {
    var dateTime = formatDate(new Date());
    var data = $(".modal-body #email").val();
    var status = true;
    if (data != "") {
        $("#error1").css("display", "none");
        status = validateMultipleEmailsCommaSeparated(data);
    }
    else {
        $("#error").css("display", "none");
        $("#error1").css("display", "block");
        return false;
    }
    //var examId = $("#share").attr('examId');
    var examId = $('#feedbackexamId').val();
    if (status) {
        $.ajax({
            type: 'POST',
            data: { examId: examId, emaild: data, dateTime: dateTime },
            url: '/ExamHistory/ShareResult',
            success: function (result) {
                if (result) {
                    $('#Feedback').popover('hide');
                    $("#myForm").html('');
                    $("#shareResultconfirmDialog").modal();
                }
                else {
                    $("#shareResultErrorDialog").modal();
                }
            }
        });

        $("#error").css("display", "none");


    } else {

        $("#error").css("display", "block");
        return false;
    }
    //return false;
});

function formatDate(date) {
    var monthNames = [
        "1", "2", "3",
        "4", "5", "6", "7",
        "8", "9", "10",
        "11", "12"
    ];

    var day = date.getDate();
    var monthIndex = date.getMonth();
    var year = date.getFullYear();
    var month = monthNames[monthIndex]
    return month + '-' + day + '-' + year;
}