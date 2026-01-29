(function () {
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
            "url": '/ExamHistory/SharedExamHistoryDetails',
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

                        showDetailedAnswers = data.ShowDetailedAnswers &&
                            (moment(today, "DD/MM/YYYY").isAfter(moment(examEndDate, "DD/MM/YYYY")));
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
                    } else {
                        dateToFormat = row.ExamCreatedDate;
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
                data: null, "bSortable": false, render: function (data, type, row) {

                    if (data.ExamStatus == 2) {
                        //return new moment(data.ExamLastAttemptDate, "DD/MM/YYYY").format('MMM DD YYYY');

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

                       // console.log("date - local :", date);

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
                        //return new moment(data.ExamEndDate, "DD/MM/YYYY").format('MMM DD YYYY');
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
                    /*if (data.IsSharedExam == true && data.ExamStartDate) {
                        var today = moment().format('DD/MM/YYYY');
                        var examStartDate = moment(data.ExamStartDate, "DD/MM/YYYY").format('DD/MM/YYYY');

                        if (today.isBefore(examStartDate)) {
                            return '<small>Actions available on Start Date</small>';
                        }
                        if (today.isAfter(examEndDate)) {
                                
                        }
                    }*/

                    if (data.IsOriginator) {
                        if (data.ExamStatus == 1) {
                            return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                        }
                        if (data.ExamStatus == 2) {
                            return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'class="marright10" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                        }
                        if (data.ExamStatus == 0) {
                            return null;
                        }
                    }
                    else {
                        if (data.ExamStatus == 1) {
                            return '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                        }
                        if (data.ExamStatus == 2) {
                            return '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                        }
                        if (data.ExamStatus == 0) {
                            return null;
                        }
                    }

                    /*if (data.ExamStatus == 1 && data.IsOriginator) {
                        return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                    }
                    if (data.ExamStatus == 2 ) {
                        return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'class="marright10" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                    }
                    if (data.ExamStatus == 0) {
                        return null;
                    }*/
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

// ==================== EMAIL VALIDATION FUNCTIONS ====================
function isValidEmail(e) {
    return /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/.test(e);
}

function validateMultipleEmailsCommaSeparated(value) {
    if (!value || value.trim() === '') {
        return false;
    }

    var emails = value.split(",");
    for (var i = 0; i < emails.length; i++) {
        var email = emails[i].trim();
        if (email === '') {
            continue;
        }
        if (!isValidEmail(email)) {
            return false;
        }
    }
    return true;
}

// ==================== RESET RESHARE MODAL ====================
function resetReshareModal() {
    $('#emailInput_text').val('');
    $('.EmailIdSpan').text('');
    $('#error, #error1').hide();
    $('#dateError').hide();
    $('#reshareStart, #reshareEnd').val('');
}

$('#DescModal').on('hidden.bs.modal', function () {
    resetReshareModal();
});

// ==================== SHARE BUTTON - OPEN MODAL ====================
$('#ExamHistoryTable tbody').off('click', '#share').on('click', '#share', function (ev) {
    ev.preventDefault();
    var examId = $(this).attr('examId');
    resetReshareModal();
    $('#feedbackexamId').val(examId);

    var $row = $(this).closest('tr');

    // Get the visible dates from the table columns
    // Column 4 = Start Date, Column 6 = End Date
    var startDateText = $row.find('td').eq(4).text().trim();
    var endDateText = $row.find('td').eq(6).text().trim();

    //console.log('Start Date from table:', startDateText);
    //console.log('End Date from table:', endDateText);

    if (endDateText && endDateText !== '' && endDateText !== 'N/A') {  // Only set dates if end date is present
        // Only populate if dates exist and are not empty
        if (startDateText && startDateText !== '' && startDateText !== 'N/A') {
            try {
                // Parse the displayed date (e.g., "Jan 13 2026")
                var startMoment = moment(startDateText, ['MMM DD YYYY', 'DD MMM YYYY'], true);
                //console.log("startMoment :", startMoment);
                if (startMoment.isValid()) {
                    var formattedStart = startMoment.format('YYYY-MM-DD');
                    //console.log('Formatted Start Date:', formattedStart);
                    $('#reshareStart').val(formattedStart);
                } else {
                    //console.log('Could not parse start date:', startDateText);
                    $('#reshareStart').val('');
                }
            } catch (e) {
                console.log('Error parsing start date:', e);
                $('#reshareStart').val(startDateText);
            }
        } else {
            //console.log('No start date in table');
            $('#reshareStart').val('');
        }

        if (endDateText && endDateText !== '' && endDateText !== 'N/A') {
            try {
                // Parse the displayed date (e.g., "Jan 16 2026")
                var endMoment = moment(endDateText, ['MMM DD YYYY', 'DD MMM YYYY'], true);
                if (endMoment.isValid()) {
                    var formattedEnd = endMoment.format('YYYY-MM-DD');
                    //console.log('Formatted End Date:', formattedEnd);
                    $('#reshareEnd').val(formattedEnd);
                } else {
                    //console.log('Could not parse end date:', endDateText);
                    $('#reshareEnd').val('');
                }
            } catch (e) {
                console.log('Error parsing end date:', e);
                $('#reshareEnd').val('');
            }
        } else {
            //console.log('No end date in table');
            $('#reshareEnd').val('');
        }
    }

    //console.log('Modal opened with Start:', $('#reshareStart').val(), 'End:', $('#reshareEnd').val());
    $('#DescModal').modal("show");
});

// ==================== EMAIL INPUT - REAL-TIME VALIDATION ====================
$('#emailInput_text').on('input keyup', function () {
    $(this).removeClass('input-validation-error').css('border-color', '');
    $('.EmailIdSpan').text('');
});

// Helper function to format date to ISO
function formatDateToISO(dateStr) {
    //console.log("Called");
    if (!dateStr) return '';

    // If already in ISO format (yyyy-MM-dd), return as is
    if (/^\d{4}-\d{2}-\d{2}$/.test(dateStr)) {
        return dateStr;
    }

    // If in dd-MM-yyyy format, convert to yyyy-MM-dd
    if (/^\d{2}-\d{2}-\d{4}$/.test(dateStr)) {
        var parts = dateStr.split('-');
        return parts[2] + '-' + parts[1] + '-' + parts[0];
    }

    return dateStr;
}

// ==================== SHARE/RESHARE BUTTON - VALIDATE AND SUBMIT ====================
$('.sharefeedback').off('click').on('click', function (e) {
    e.preventDefault();
    e.stopPropagation();

    var examId = $('#feedbackexamId').val() | 0;
    var emailValue = $('#emailInput_text').val().trim();

    //console.log('Submit clicked. ExamId:', examId, 'Emails:', emailValue);

    var endDateUser_present = $('#reshareEnd').val();

    if (endDateUser_present) {  // Only set dates if end date is present
        var startDateUser_local = $('#reshareStart').val();

        // Get current time when START date is selected
        var now = new Date();
        var currentHour = String(now.getHours()).padStart(2, '0');
        var currentMinute = String(now.getMinutes()).padStart(2, '0');
        var currentSecond = String(now.getSeconds()).padStart(2, '0');
        var currentTime = currentHour + ':' + currentMinute + ':' + currentSecond;

        // Format date to ISO format if needed
        startDateStr = formatDateToISO(startDateUser_local);

        // Combine date with current time: "2026-01-22T19:47:54"
        var startDate_localdatetime = startDateStr + 'T' + currentTime;
        var localStartDate = new Date(startDate_localdatetime);
        var startDateUser = localStartDate.toISOString();
        //var startDateUser = startDateUTC; 

        console.log("startDateUser_local :", startDateUser_local);
        console.log("startDateStr :", startDateStr);
        console.log("startDate_localdatetime :", startDate_localdatetime);
        console.log("localStartDate :", localStartDate);
        console.log("startDateUser - UTC:", startDateUser);

        var endDateUser_local = $('#reshareEnd').val();
        var endDateStr = formatDateToISO(endDateUser_local);

        // Combine date with current time: "2026-01-22T19:47:54"
        var endDate_localdatetime = endDateStr + 'T' + currentTime;
        var localEndDate = new Date(endDate_localdatetime);

        var endDateUser = localEndDate.toISOString();


        console.log("endDateUser_local :", endDateUser_local);
        console.log("endDateStr :", endDateStr);
        console.log("endDate_localdatetime :", endDate_localdatetime);
        console.log("localEndDate :", localEndDate);
        console.log("endDateUser :", endDateUser);
    }

    // CLEAR all errors first
    $("#error").hide();
    $("#error1").hide();

    // Validate email input is not empty
    if (!emailValue) {
        //console.log('No email entered');
        $("#error1").show();
        return false;
    }

    // Validate email format for each email
    var emailArray = emailValue.split(',');
    for (var i = 0; i < emailArray.length; i++) {
        var email = emailArray[i].trim();
        if (email && !isValidEmail(email)) {
            //console.log('Invalid email:', email);
            $("#error").show();
            return false;
        }
    }

    //console.log('Email validation passed');

    // Prepare email list
    var newEmails = emailValue.split(',')
        .map(function (e) { return e.trim(); })
        .filter(function (e) { return e.length > 0; });

    //console.log('Checking for duplicates and subscriptions for:', newEmails);

    // FIRST:    Check for DUPLICATES (already shared)
    $.ajax({
        type: 'POST',
        url: '/ExamHistory/ValidateReshareDuplicates',
        data: { examId: examId, emails: newEmails.join(',') },
        dataType: 'json',
        success: function (duplicateRes) {
           // console.log('ValidateReshareDuplicates response:', duplicateRes);

            if (duplicateRes && duplicateRes.ok && duplicateRes.duplicates && duplicateRes.duplicates.length > 0) {
                // Show duplicate modal - exam already shared with these users
                //console.log('Duplicate emails found (already shared):', duplicateRes.duplicates);

                // HIDE parent modal before showing child modal
                $('#DescModal').modal('hide');

                var $dupList = $('#reshare-dup-list').empty();
                duplicateRes.duplicates.forEach(function (em) {
                    $('<li/>').text(em).css('color', '#d9534f').appendTo($dupList);
                });
                $('#reshare-duplicate-modal').modal('show');

                // Handle proceed with force=true
                $('#reshare-dup-proceed').off('click').one('click', function () {
                    //console.log('User proceeded with force=true for duplicates');
                    $('#reshare-duplicate-modal').modal('hide');

                    // Now check subscriptions before resharing
                    checkSubscriptionsAndReshare(examId, newEmails, true, startDateUser, endDateUser);
                });
            } else {
                // No duplicates, proceed to check subscriptions
               // console.log('No duplicates found, checking subscriptions');
                checkSubscriptionsAndReshare(examId, newEmails, false, startDateUser, endDateUser);
            }
        },
        error: function (xhr, status, error) {
            console.error('ValidateReshareDuplicates error:', error);
            $('#shareResultErrorDialog .modal-body').text("Error validating duplicates: " + error);
            $('#shareResultErrorDialog').modal('show');
        }
    });

    return false;
});

// ==================== CHECK SUBSCRIPTIONS AND PROCEED WITH RESHARE ====================
function checkSubscriptionsAndReshare(examId, emails, force, startDateUser, endDateUser) {
    //console.log('Checking subscriptions for:', emails);

    $.ajax({
        type: 'POST',
        url: '/ExamHistory/CheckSubscribedEmails',
        data: {
            emails: emails.join(','),
            startDateUser: startDateUser,
            endDateUser: endDateUser
        },
        dataType: 'json',
        success: function (subRes) {
            //console.log('CheckSubscribedEmails response:', subRes);

            if (subRes && subRes.ok && subRes.duplicates && subRes.duplicates.length > 0) {
                // Show unsubscribed modal
               // console.log('Unsubscribed emails found:', subRes.duplicates);

                // HIDE parent modal before showing child modal
                $('#DescModal').modal('hide');

                var $unsubList = $('#unsubscribed-email-list').empty();
                subRes.duplicates.forEach(function (em) {
                    $('<li/>').text(em).appendTo($unsubList);
                });
                $('#unsubscribed-emails-modal').modal('show');

                // Handle proceed anyway
                $('#unsubscribed-proceed').off('click').one('click', function () {
                    //console.log('User proceeded despite unsubscribed emails');
                    $('#unsubscribed-emails-modal').modal('hide');
                    proceedWithReshare(examId, emails, startDateUser, endDateUser, force);
                });
            } else {
                // No unsubscribed emails, proceed with reshare
                //console.log('All emails are subscribed, proceeding with reshare');
                proceedWithReshare(examId, emails, startDateUser, endDateUser, force);
            }
        },
        error: function (xhr, status, error) {
            console.error('CheckSubscribedEmails error:', error);
            $('#shareResultErrorDialog .modal-body').text("Error checking subscriptions: " + error);
            $('#shareResultErrorDialog').modal('show');
        }
    });
}

// ==================== PROCEED WITH RESHARE ====================
function proceedWithReshare(examId, emails, startDateUser, endDateUser, force) {
    force = force || false;

    console.log('proceedWithReshare called with:', {
        examId: examId,
        emails: emails,
        startDateUser: startDateUser,
        endDateUser: endDateUser,
        force: force
    });

    // ===== HIDE MODAL BEFORE SHOWING LOADER =====
    $('#DescModal').modal('hide');

    // ===== SHOW LOADER =====
    $('#loader_resetExam').fadeIn(100);

    $.ajax({
        type: 'POST',
        url: '/ExamHistory/ReshareExam',
        data: {
            examId: examId,
            emaild: emails.join(','),
            dateTime: formatDate(new Date()),
            startdate: startDateUser || '',
            enddate: endDateUser || '',
            force: force
        },
        dataType: 'json',
        success: function (resp) {
            //console.log('ReshareExam response:', resp);

            // ===== HIDE LOADER =====
            $('#loader_resetExam').fadeOut(100);

            const ok = resp && (resp.success === true || resp.ok === true || ((resp.inserted | 0) > 0));
            if (ok) {
                // Hide the main reshare modal first
                $('#DescModal').modal('hide');
                resetReshareModal();

                // Show success modal and keep it open until user clicks OK
                $('#shareResultconfirmDialog .modal-body').text("Exam has been shared successfully!");
                $('#shareResultconfirmDialog').modal('show');

                // Handle OK button click
                $('#shareResultconfirmDialog').off('hidden.bs.modal').on('hidden.bs.modal', function () {
                    location.reload();
                });
            } else {
                $('#shareResultErrorDialog .modal-body').text("Unable to reshare the exam. Please try again.");
                $('#shareResultErrorDialog').modal('show');
            }
        },
        error: function (xhr, status, error) {
            console.error('ReshareExam error:', error);

            // ===== HIDE LOADER =====
            $('#loader_resetExam').fadeOut(100);

            $('#shareResultErrorDialog .modal-body').text("A server error occurred:  " + error);
            $('#shareResultErrorDialog').modal('show');
        }
    });
}

// ==================== DELETE BUTTON ====================
$('#ExamHistoryTable tbody').on('click', '#delete', function () {
    var ExamId = $(this).attr('examId');
    getConfirmation(ExamId);
    function getConfirmation(ExamId) {
        var retVal = $("#deleteButton").modal("show");
        $(".deleted").click(function () {
            window.location.href = '/ExamHistory/DeleteSharedExamHistoryDetails?ExamId='+ExamId;
        });
    }
});

// ==================== FORMAT DATE ====================
function formatDate(date) {
    var monthNames = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"];
    var day = date.getDate();
    var monthIndex = date.getMonth();
    var year = date.getFullYear();
    var month = monthNames[monthIndex];
    return month + '-' + day + '-' + year;
}

// ==================== STATUS FILTER CHANGE ====================
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
            "url": '/ExamHistory/SharedExamHistoryDetails',
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
                        showDetailedAnswers = data.ShowDetailedAnswers &&
                            (moment(today, "DD/MM/YYYY").isAfter(moment(examEndDate, "DD/MM/YYYY")));
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
                    } else {
                        dateToFormat = row.ExamCreatedDate;
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
                data: null, "bSortable": false, render: function (data, type, row) {

                    if (data.ExamStatus == 2) {
                        //return new moment(data.ExamLastAttemptDate, "DD/MM/YYYY").format('MMM DD YYYY');

                        var dateString = data.ExamLastAttemptDate;
                        console.log("dateString - UTC from DB: ", dateString);
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
                        //return new moment(data.ExamEndDate, "DD/MM/YYYY").format('MMM DD YYYY');
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
                    /*if (data.IsSharedExam == true && data.ExamStartDate) {
                        var today = moment().format('DD/MM/YYYY');
                        var examStartDate = moment(data.ExamStartDate, "DD/MM/YYYY").format('DD/MM/YYYY');

                        if (today !== examStartDate) {
                            return '<small>Actions available on Start Date</small>';
                        }
                    }*/

                    /*if (data.ExamStatus == 1) {
                        return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a>  <a href="#"  examId=' + data.ExamId + ' class="editAsset" id="delete"><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                    }
                    if (data.ExamStatus == 2) {
                        return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'class="marright10" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                    }
                    if (data.ExamStatus == 0) {
                        return null;
                    }*/

                    if (data.IsOriginator) {
                        if (data.ExamStatus == 1) {
                            return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a>  <a href="#"  examId=' + data.ExamId + ' class="editAsset" id="delete"><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                        }
                        if (data.ExamStatus == 2) {
                            return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'class="marright10" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                        }
                        if (data.ExamStatus == 0) {
                            return null;
                        }
                    }
                    else {
                        if (data.ExamStatus == 1) {
                            return '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                        }
                        if (data.ExamStatus == 2) {
                            return '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                        }
                        if (data.ExamStatus == 0) {
                            return null;
                        }
                    }

                    /*if (data.ExamStatus == 1 && data.IsOriginator) {
                        return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="/Assessment/Index?ExamId=' + data.ExamId + '&Questionid=' + data.LastQuestionId + '" class="editAsset marright10"></a> <a href="#" examId=' + data.ExamId + ' class="editAsset" id="delete";><i class="fa fa-trash-o text-center deleteLink"></i></a>';
                    }
                    if (data.ExamStatus == 2 ) {
                        return '<a href="#" ' + 'examId="' + data.ExamId + '" ' + 'id="share" ' + 'class="marright10" ' + 'title="Re-share this exam" ' + 'data-emails="' + (data.EmailIdToWhomExamIsShared || '') + '">' + '<i class="fa fa-share-alt text-center"></i>' + '</a>' + '<a href="#" examId="' + data.ExamId + '" id="delete">' + '<i class="fa fa-trash-o text-center"></i>' + '</a>';
                    }
                    if (data.ExamStatus == 0) {
                        return null;
                    }*/
                }
            }
        ],
    });
});