(function () {

    // Check if URL contains 'SearchByExam/SearchBySharedExam'
    var cameFromSearchPage = sessionStorage.getItem('cameFromSearchPage') === 'true';

    if (!cameFromSearchPage) {
        // Remove Shared Exam Data
        localStorage.removeItem('examQuestionLimit');
        localStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('examQuestionLimit');
        sessionStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('buildExamFormData');
        sessionStorage.removeItem('cameFromSearchPage');
    }
    //else {
    //    // Clear the flag so next time it resets
    //    sessionStorage.removeItem('cameFromSearchPage');
    //}

    var CustomExamType = null;
    var SumulatedExamType = null;
    var CustomIDArray = [];
    var totalQuestionArray = [];
    var markquestionArray = [];
    var incorrectasnwerArray = [];
    var examskipquestionArray = [];
    var QuickType = null;
    $('#NoofQuestions').prop('type', 'text');

    $.validator.unobtrusive.adapters.addBool("TypeofCategoryList", "required");

    applyInitialSharedExamState();
    wireSubmitToEnableDisabledFields();

    function applyInitialSharedExamState() {
        // If "Show Detailed Answers" is already checked, allow "Show Ans After End"
        var showDetailed = $('#ShowDetailedAnswers').is(':checked');
        $('#ShowAnsAfterExamCompletion')
            //.prop('disabled', !showDetailed)
            .prop('checked', showDetailed ? $('#ShowAnsAfterExamCompletion').is(':checked') : false);

        // If "Set Date Range" is already checked, enable Start/End inputs
        var dateRange = $('#DateRangeEnabled').is(':checked');
        $('#StartDate, #EndDate').prop('disabled', !dateRange);
    }

    // Ensure disabled inputs are enabled just before posting the form
    function wireSubmitToEnableDisabledFields() {
        $('#createExam').on('submit', function () {
            $('#ShowAnsAfterExamCompletion, #StartDate, #EndDate').prop('disabled', false);

            // ADD THE EMAIL VALIDATION HERE
            var examType = $('#ExamType').val();

            // Only validate emails for shared exam type (value = "4")
            if (examType === '4') {
                var emailValue = $('#emailInput').val();
                var validation = validateEmails(emailValue);

                if (!validation.isValid) {
                    event.preventDefault(); // Prevent form submission
                    $('.EmailIdSpan').text(validation.message);
                    $('#emailInput').addClass('error-border').focus();
                    return false;
                } else {
                    // Clean up the email string before submission
                    $('#emailInput').val(validation.emails.join(', '));
                    // Clear any previous error messages
                    $('.EmailIdSpan').text('');
                    $('#emailInput').removeClass('error-border');
                }
            }
        });
    }

    //function performAllValidations() {
    //    var totalSum = 0;
    //    var flag = true;
    //    var isSharedExam = ($('#ExamType').val() === '4');
    //
    //    // Exam name validation
    //    if ($("#ExamName").val() == "") {
    //        $("#ExamName").focus();
    //        var ExamTitleMsg = "Please enter a unique exam title."
    //        $(". ExamTitleSpan").text(ExamTitleMsg);
    //        return false;
    //    }
    //
    //    // Question sum calculation
    //    if ($("#questionfilter_0").prop("checked")) {
    //        totalSum = parseInt($('#spanValue_0').html());
    //    } else {
    //        totalSum = 0;
    //        if ($("#questionfilter_1").prop("checked")) {
    //            totalSum += parseInt($('#spanValue_1').html());
    //        }
    //        if ($("#questionfilter_2").prop("checked")) {
    //            totalSum += parseInt($('#spanValue_2').html());
    //        }
    //        if ($("#questionfilter_3").prop("checked")) {
    //            totalSum += parseInt($('#spanValue_3').html());
    //        }
    //    }
    //
    //    // Shared exam validations
    //    if ($('#custommode: visible').length != 0 && $('#anothermode:visible').length != 0 && $('#quick:visible').length != 0 && $('#custom:visible').length != 0) {
    //        if ($('. rt [name=TypeofCategoryList]: checkBox:checked').length == 0) {
    //            $('#selectall').focus();
    //            var msg = "Please select at least one BCSC section."
    //            $("#ErrorMsg").text(msg);
    //            return false;
    //        }
    //        if ($("#NoofQuestions").val() == "") {
    //            $("#NoofQuestions").focus();
    //            var QuesErrMsg = "Please enter number of questions."
    //            $(".NoOfQuesSpan").text(QuesErrMsg);
    //            return false;
    //        }
    //        if ($("#NoofQuestions").val() > totalSum && (($("#questionfilter_0").prop("checked") == true) || ($("#questionfilter_1").prop("checked") == true) || ($("#questionfilter_2").prop("checked") == true) || ($("#questionfilter_3").prop("checked") == true))) {
    //            $("#NoofQuestions").focus();
    //            var QuesErrMsg = "Number of question should not be greater than selected question type."
    //            $(".NoOfQuesSpan").text(QuesErrMsg);
    //            return false;
    //        }
    //        if ($("#NoofQuestions").val() == 0) {
    //            $("#NoofQuestions").focus();
    //            var QuesErrMsg = "Number of question should be greater than zero."
    //            $(".NoOfQuesSpan").text(QuesErrMsg);
    //            return false;
    //        }
    //        if ($('. rtt [name=TypeofQuestionList]:checkBox:checked').length == 0) {
    //            var MsgText = "Please select at least one question type."
    //            $("#QuesTypeErr").text(MsgText);
    //            return false;
    //        }
    //    } else if ($('#anothermode:visible').length != 0 && $('#custom:visible').length != 0) {
    //        if ($("#NoofQuestions").val() == "") {
    //            $("#NoofQuestions").focus();
    //            var QuesErrMsg = "Please enter number of questions."
    //            $(".NoOfQuesSpan").text(QuesErrMsg);
    //            return false;
    //        }
    //        if ($("#NoofQuestions").val() == 0) {
    //            $("#NoofQuestions").focus();
    //            var QuesErrMsg = "Number of question should be greater than zero."
    //            $(".NoOfQuesSpan").text(QuesErrMsg);
    //            return false;
    //        }
    //        if ($("#NoofQuestions").val() > totalSum && (($("#questionfilter_0").prop("checked") == true) || ($("#questionfilter_1").prop("checked") == true) || ($("#questionfilter_2").prop("checked") == true) || ($("#questionfilter_3").prop("checked") == true))) {
    //            $("#NoofQuestions").focus();
    //            var QuesErrMsg = "Number of question should not be greater than selected question type."
    //            $(". NoOfQuesSpan").text(QuesErrMsg);
    //            return false;
    //        }
    //        if ($('.rtt [name=TypeofQuestionList]:checkBox:checked').length == 0) {
    //            var MsgText = "Please select at least one question type."
    //            $("#QuesTypeErr").text(MsgText);
    //            return false;
    //        }
    //    }
    //
    //    // CHANGE 4: Fixed email validation for shared exams
    //    if (isSharedExam) {
    //        var emailValue = $('#emailInput').val();
    //        var validation = validateEmails(emailValue);
    //
    //        if (!validation.isValid) {
    //            $('. EmailIdSpan').text(validation.message);
    //            $('#emailInput').addClass('error-border').focus();
    //            return false;
    //        } else {
    //            // Clean up the email string before submission
    //            $('#emailInput').val(validation.emails.join(', '));
    //            $('.EmailIdSpan').text('');
    //            $('#emailInput').removeClass('error-border');
    //        }
    //
    //        // Date range validation
    //        if ($("#DateRangeEnabled").prop("checked")) {
    //            var startDateStr = $("#StartDate").val();
    //            var endDateStr = $("#EndDate").val();
    //            var todayDate_New = new Date();
    //
    //            var today1 = new Date();
    //            var year1 = today1.getFullYear();
    //            var month1 = String(today1.getMonth() + 1).padStart(2, '0');
    //            var day1 = String(today1.getDate()).padStart(2, '0');
    //            var todayDate = year1 + '-' + month1 + '-' + day1;
    //
    //            function toUTCDate(dateStr) {
    //                var parts = dateStr.split('-');
    //                var year = parseInt(parts[0]);
    //                var month = parseInt(parts[1]) - 1;
    //                var day = parseInt(parts[2]);
    //                return Date.UTC(year, month, day);
    //            }
    //
    //            if (!startDateStr) {
    //                $("#StartDate").focus();
    //                $(".StartDateSpan").text("Please select start date.");
    //                return false;
    //            }
    //
    //            if (!endDateStr) {
    //                $("#EndDate").focus();
    //                $(".EndDateSpan").text("Please select end date.");
    //                return false;
    //            }
    //
    //            var startDateUTC = toUTCDate(startDateStr);
    //            var endDateUTC = toUTCDate(endDateStr);
    //            var todayDateUTC = toUTCDate(todayDate);
    //
    //            if (endDateUTC < startDateUTC) {
    //                $("#EndDate").focus();
    //                $(". EndDateSpan").text("End date must be after start date.");
    //                return false;
    //            }
    //
    //            if (startDateUTC < todayDateUTC) {
    //                $("#StartDate").focus();
    //                $(".StartDateSpan").text("Start date cannot be in the past.");
    //                return false;
    //            }
    //
    //            // Create UTC hidden fields
    //            if (startDateStr) {
    //                var startDateUTCTimestamp = toUTCDate(startDateStr);
    //                var startDateUTCString = new Date(startDateUTCTimestamp).toISOString();
    //
    //                if ($('#StartDateUTCHidden').length === 0) {
    //                    $('<input>').attr({
    //                        type: 'hidden',
    //                        id: 'StartDateUTCHidden',
    //                        name: 'StartDateUTCHidden',
    //                        value: startDateUTCString
    //                    }).appendTo('#createExam');
    //                } else {
    //                    $('#StartDateUTCHidden').val(startDateUTCString);
    //                }
    //            }
    //
    //            if (endDateStr) {
    //                var endDateUTCTimestamp = toUTCDate(endDateStr);
    //                var endDateUTCString = new Date(endDateUTCTimestamp).toISOString();
    //
    //                if ($('#EndDateUTCHidden').length === 0) {
    //                    $('<input>').attr({
    //                        type: 'hidden',
    //                        id: 'EndDateUTCHidden',
    //                        name: 'EndDateUTCHidden',
    //                        value: endDateUTCString
    //                    }).appendTo('#createExam');
    //                } else {
    //                    $('#EndDateUTCHidden').val(endDateUTCString);
    //                }
    //            }
    //        }
    //    }
    //
    //    return true;
    //}





    // Detect click on ExamType dropdown
    $("#ExamType").on('click', function () {
        // Remove Shared Exam Data
        localStorage.removeItem('examQuestionLimit');
        localStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('examQuestionLimit');
        sessionStorage.removeItem('selectedQuestionIds');
        localStorage.removeItem('buildExamFormData');
        sessionStorage.removeItem('buildExamFormData');
        sessionStorage.removeItem('cameFromSearchPage');

        // Reset Date Range - uncheck and disable fields
        $('#DateRangeEnabled').prop('checked', false);
        $('#StartDate').val('').prop('disabled', true);
        $('#EndDate').val('').prop('disabled', true);
        $('#sharedExamSearch').val(''); // Make search questions blank

        // Handle NumberOfCustomisedQuestions field (might have different name)
        if ($('#NumberOfCustomisedQuestions').length > 0) {
            $('#NumberOfCustomisedQuestions').val('0');
        }
        if ($('input[name="NumberOfCustomisedQuestions"]').length > 0) {
            $('input[name="NumberOfCustomisedQuestions"]').val('0');
        }

        // Reset shared exam specific fields
        if (typeof window.clearAllEmails === 'function') {
            window.clearAllEmails();
        } else {
            $('#EmailId').val(''); // Fallback
        }
    });

    //Shared Exam Show Detailed answer enable Disable start - 17Sep25
    //$('#ShowAnsAfterExamCompletion').attr('disabled', true);
    /*$('#ShowDetailedAnswers').on('change', function () {
        if ($(this).prop('checked') == true) {
            console.log("true");
            $('#ShowAnsAfterExamCompletion').removeAttr('disabled');
        }
        else {
            console.log("false");
            $('#ShowAnsAfterExamCompletion').prop('checked', false);
            //$('#ShowAnsAfterExamCompletion').attr('disabled', true);
            //$('#DateRangeEnabled').prop('checked', false);
            //$('#StartDate').attr('disabled', true);
            //$('#EndDate').attr('disabled', true);
        }
    });*/

    //Shared Exam Show Detailed answer enable Disable start - 17Sep25
    $('#DateRangeEnabled').on('change', function () {
        if ($(this).prop('checked') == true) {
            //console.log("true");
            //$('#ShowDetailedAnswers').prop('checked', true);
            $('#ShowAnsAfterExamCompletion').removeAttr('disabled');
        }
        else {
            //console.log("false");
            $('#ShowAnsAfterExamCompletion').prop('checked', false);
            $('#StartDate').attr('disabled', true);
        }
    });

    $('#ShowAnsAfterExamCompletion').on('change', function () {
        if ($(this).prop('checked') == true) {
            //$('#ShowDetailedAnswers').prop('checked', true);
            $('#DateRangeEnabled').prop('checked', true);
            $('#StartDate').attr('disabled', false);
            $('#EndDate').attr('disabled', false);
        }
        else {
        }
    });
    //Shared Exam Show Detailed answer enable Disable End - 17Sep25

    $('#ExamMode').off('change');
    $('#ExamMode').on('change', function () {
        if ($(this).prop('checked') == true) {
            $('#ExamTimeType').prop('checked', false);
            //$('#DateRangeEnabled').prop('checked', false);
            //$("#ShowDetailedAnswers").prop('checked', false);
            //$("#ShowAnsAfterExamCompletion").prop('checked', false);
            $('#ExamAnswerToShow').prop('checked', true);
            $('#ExamAnswerToShow').attr('disabled', 'disabled');
            $("#ExamTimeType").attr('disabled', true);
            //$("#DateRangeEnabled").attr('disabled', true);
            //$("#ShowDetailedAnswers").attr('disabled', true);
            //$("#ShowAnsAfterExamCompletion").attr('disabled', true);
        }
        else {
            $('#ExamAnswerToShow').prop('checked', false);
            $('#ExamAnswerToShow').removeAttr('disabled');
            $('#ExamTimeType').removeAttr('disabled');
            //$('#DateRangeEnabled').removeAttr('disabled');
            //$("#DateRangeEnabled").removeAttr('disabled');

        }
    });
    var Total = $("#spanValue_0").text();
    var Skip = $("#spanValue_1").text();
    var Incorrect = $("#spanValue_2").text();
    var Marked = $("#spanValue_3").text();
    var Total, Skip, Incorrect, Marked;
    $("#spanValue_0").text(0);
    $("#spanValue_1").text(0);
    $("#spanValue_2").text(0);
    $("#spanValue_3").text(0);

    $("input[type='hidden'][name='ExamMode']").remove();
    $("input[type='hidden'][name='ExamAnswerToShow']").remove();
    $("input[type='hidden'][name='ExamTimeType']").remove();
    $("input[type='hidden'][name='DateRangeEnabled']").remove();
    $("input[type='hidden'][name='ShowDetailedAnswers']").remove();
    $("input[type='hidden'][name='ShowAnsAfterExamCompletion']").remove();

    //Get ExamType Count
    var custom_Mode_Count = 0;
    var simulated_Mode_Count = 0;
    var quick_Mode_Count = 0;
    var shared_Mode_Count = 0;
    $.ajax({
        type: 'POST',
        url: '/ExamManager/GetExamCountOnExamType',
        success: function (result) {
            custom_Mode_Count = result.CustomModeCount;
            simulated_Mode_Count = result.SimulatedModeCount;
            quick_Mode_Count = result.QuickModeCount;
            shared_Mode_Count = result.SharedModeCount;
            $('#ExamName').val("Exam_custom_mode_" + custom_Mode_Count);

            if ($("#ExamType").val() == 2) {
                $('#ExamName').val("Exam_quick_mode_" + quick_Mode_Count);
            }
        }
    });


    $('#ExamType').on('change', function () {
        if (parseInt(this.value) == 1) {
            $('#custommode').show();
            $('#anothermode').hide();
            $('#custom').hide();
            $('#quick').hide();
            $("#NoofQuestions").val('');
            $('#selectall').attr('checked', false);
            $('.TypeofCategoryList').attr('checked', false);
            $('#ExamModeDiv').hide();
            $('#ExamName').val("Exam_Simulated_mode_" + simulated_Mode_Count);
            var SimulatesMsg = "Simulated exams have 260 questions and a 5-hour time limit.";
            $(".SimulatedTextSpan").text(SimulatesMsg);
            $(".ExamTitleSpan").text('');
            $(".NoOfQuesSpan").text('');
            $("#ErrorMsg").text('');
            $("#QuesTypeErr").text("");
            $("#spanValue_0").text(0);
            $("#spanValue_1").text(0);
            $("#spanValue_2").text(0);
            $("#spanValue_3").text(0);
            $('#ExamAnswerToShow').val('False');
            $('#ExamMode').val('False');

        }
        else if (parseInt(this.value) == 2) {
            $('#custommode').show();
            $('#anothermode').show();
            $('#custom').show();
            $('#quick').hide();
            $("#NoofQuestions").val(15);
            $('#ExamModeDiv').hide();
            $(".SimulatedTextSpan").text("");
            $('.TypeofCategoryList').attr('checked', false);
            $('#selectall').attr('checked', false);
            // $("#NoofQuestions").attr('disabled', true);
            $("#ExamTypeTimeDiv").hide();
            $('#ExamName').val("Exam_quick_mode_" + quick_Mode_Count);
            $('#questionfilter_0').attr('checked', false);
            $('#questionfilter_1').attr('checked', false);
            $('#questionfilter_2').attr('checked', false);
            $('#questionfilter_3').attr('checked', false); // Unchecks it
            //remove attribute disabled
            $('#questionfilter_1').removeAttr('disabled');
            $("#questionfilter_2").removeAttr('disabled');
            $("#questionfilter_3").removeAttr('disabled');
            $("#questionfilter_0").prop("checked", true);
            ///////////////
            $("#ExamAnswerToShow").prop('checked', false);

            $('#ExamAnswerToShow').removeAttr('disabled');

            $("#exammode12 .toggle-switch-checkbox").attr('checked', false);
            $("#ExamTimeType").prop('checked', false);
            $("#DateRangeEnabled").prop('checked', false);
            $("#ShowDetailedAnswers").prop('checked', false);
            $("#ShowAnsAfterExamCompletion").prop('checked', false);
            $(".ExamTitleSpan").text('');
            $("#ErrorMsg").text('');
            $("#QuesTypeErr").text("");
            $(".NoOfQuesSpan").text('');
            CustomIDArray = [];
            totalQuestionArray = [];
            markquestionArray = [];
            incorrectasnwerArray = [];
            examskipquestionArray = [];
            $("#spanValue_0").text(Total);
            $("#spanValue_1").text(Skip);
            $("#spanValue_2").text(Incorrect);
            $("#spanValue_3").text(Marked);


        } else if (parseInt(this.value) == 4) {
            $('#custommode').show();
            $('#anothermode').show();
            $('#custom').show();
            $('#quick').show();
            $('#questionfilter_0').attr('checked', false);
            $('#questionfilter_1').attr('checked', false);
            $('#questionfilter_2').attr('checked', false);
            $('#questionfilter_3').attr('checked', false); // Unchecks it

            //remove attribute disabled
            $('#questionfilter_1').removeAttr('disabled');
            $("#questionfilter_2").removeAttr('disabled');
            $("#questionfilter_3").removeAttr('disabled');
            $("#QuesTypeErr").text("");
            $("#NoofQuestions").val('');
            $('#ExamModeDiv').show();
            $(".SimulatedTextSpan").text("");
            $("#NoofQuestions").attr('disabled', false);
            $('#ExamName').val("Exam_shared_mode_" + shared_Mode_Count);
            $("#exammode12 .toggle-switch-checkbox").attr('checked', false);
            $("#ExamTimeType").prop('checked', false);
            $("#DateRangeEnabled").prop('checked', false);
            $("#ShowDetailedAnswers").prop('checked', false);
            $("#ShowAnsAfterExamCompletion").prop('checked', false);
            $("#ExamAnswerToShow").prop('checked', true);
            if (!preserveFormData) {
                $("#ExamTimeType").prop('checked', false);
                $("#DateRangeEnabled").prop('checked', false);
                $("#ShowDetailedAnswers").prop('checked', false);
                $("#ShowAnsAfterExamCompletion").prop('checked', false);
                $("#ExamAnswerToShow").prop('checked', true); // Default to true only for new forms
            }
            $(".ExamTitleSpan").text('');
            $(".NoOfQuesSpan").text('');
            $("#ErrorMsg").text('');
            $("#ExamTypeTimeDiv").show();
            $("#spanValue_0").text(0);
            $("#spanValue_1").text(0);
            $("#spanValue_2").text(0);
            $("#spanValue_3").text(0);
            $('.TypeofCategoryList').attr('checked', false);
            $('#selectall').prop('checked', true);
            $("#selectall").trigger('change');
        } else {
            $('#custommode').show();
            $('#anothermode').show();
            $('#custom').show();
            $('#quick').show();
            $('#questionfilter_0').attr('checked', false);
            $('#questionfilter_1').attr('checked', false);
            $('#questionfilter_2').attr('checked', false);
            $('#questionfilter_3').attr('checked', false); // Unchecks it

            //remove attribute disabled
            $('#questionfilter_1').removeAttr('disabled');
            $("#questionfilter_2").removeAttr('disabled');
            $("#questionfilter_3").removeAttr('disabled');
            $("#QuesTypeErr").text("");
            $("#NoofQuestions").val('');
            $('#ExamModeDiv').show();
            $(".SimulatedTextSpan").text("");
            $("#NoofQuestions").attr('disabled', false);
            $('#ExamName').val("Exam_custom_mode_" + custom_Mode_Count);
            $("#exammode12 .toggle-switch-checkbox").attr('checked', false);
            $("#ExamTimeType").prop('checked', false);
            $("#DateRangeEnabled").prop('checked', false);
            $("#ShowDetailedAnswers").prop('checked', false);
            $("#ShowAnsAfterExamCompletion").prop('checked', false);
            $("#ExamAnswerToShow").prop('checked', true);
            $(".ExamTitleSpan").text('');
            $(".NoOfQuesSpan").text('');
            $("#ErrorMsg").text('');
            $("#ExamTypeTimeDiv").show();
            $("#spanValue_0").text(0);
            $("#spanValue_1").text(0);
            $("#spanValue_2").text(0);
            $("#spanValue_3").text(0);
            $('.TypeofCategoryList').attr('checked', false);
            $('#selectall').prop('checked', true);
            $("#selectall").trigger('change');
        }
    });
    //var str1 = window.location.href;
    //var str2 = "QuickExam"
    //if (str1.indexOf(str2) != -1) {
    //    $('#ExamType').val('2');
    //    $('#ExamType').trigger('change', [{ value: 1 }]);
    //}
    Array.prototype.forEach.call(document.querySelectorAll('.clearable-input>[data-clear-input]'), function (el) {
        el.addEventListener('click', function (e) {
            e.target.previousElementSibling.value = '';
        });
    });

    $("#selectall").change(function () {
        //"select all" change
        $('#ErrorMsg').text("");
        $(".TypeofCategoryList").prop('checked', $("#selectall").prop("checked")); //change all ".checkbox" checked status
        if ($("#selectall").prop("checked")) {
            //$("#spanValue_0").text(Total);
            //$("#spanValue_1").text(Skip);
            //$("#spanValue_2").text(Incorrect);
            //$("#spanValue_3").text(Marked);
            var sList1 = "";
            var sList2 = "";
            $(".TypeofCategoryList").each(function () {
                var arrTotalQuestion = totalQuestionArray;
                var arrmarkquestion = markquestionArray;
                var arrincorrectasnwer = incorrectasnwerArray;
                var arrexamskipquestion = examskipquestionArray;
                var arr = CustomIDArray;

                var checkedId = $(this).attr('value');
                var totalquestioncountId = $(this).attr('totalcount');
                var markquestioncountId = $(this).attr('markquestioncount');
                var incorrectasnwercountId = $(this).attr('incorrectasnwercount');
                var examskipquestioncountId = $(this).attr('examskipquestioncount');

                //alert(checkedId + " " + totalquestioncountId + " " + markquestioncountId + " " + incorrectasnwercountId + " " + examskipquestioncountId);
                CustomIDArray.push(checkedId);
                totalQuestionArray.push(totalquestioncountId);
                markquestionArray.push(markquestioncountId);
                incorrectasnwerArray.push(incorrectasnwercountId);
                examskipquestionArray.push(examskipquestioncountId);

                arr = CustomIDArray;
                arrTotalQuestion = totalQuestionArray;
                arrmarkquestion = markquestionArray;
                arrincorrectasnwer = incorrectasnwerArray;
                arrexamskipquestion = examskipquestionArray;

                var allids = "";
                var allsum = 0;
                jQuery.each(totalQuestionArray, function (i, item) {
                    if (allids == "") {
                        allids = totalQuestionArray[i];
                    } else {
                        allids = allids + "," + totalQuestionArray[i];
                    }
                });
                var makrkids = "";
                var marksum = 0;
                jQuery.each(markquestionArray, function (i, item) {
                    if (makrkids == "") {
                        makrkids = markquestionArray[i];
                    } else {
                        makrkids = makrkids + "," + markquestionArray[i];
                    }
                });
                var incorrectids = "";
                var incorrectsum = 0;
                jQuery.each(incorrectasnwerArray, function (i, item) {
                    if (incorrectids == "") {
                        incorrectids = incorrectasnwerArray[i];
                    } else {
                        incorrectids = incorrectids + "," + incorrectasnwerArray[i];
                    }
                });
                var examskipquestionids = "";
                var examskipquestionsum = 0;
                jQuery.each(examskipquestionArray, function (i, item) {
                    if (examskipquestionids == "") {
                        examskipquestionids = examskipquestionArray[i];
                    } else {
                        examskipquestionids = examskipquestionids + "," + examskipquestionArray[i];
                    }
                });

                for (var i = 0; i < totalQuestionArray.length; i++) {
                    allsum += totalQuestionArray[i] << 0;
                }

                for (var i = 0; i < markquestionArray.length; i++) {
                    marksum += markquestionArray[i] << 0;
                }

                for (var i = 0; i < incorrectasnwerArray.length; i++) {
                    incorrectsum += incorrectasnwerArray[i] << 0;
                }

                for (var i = 0; i < examskipquestionArray.length; i++) {
                    examskipquestionsum += examskipquestionArray[i] << 0;
                }


            });

        } else {

            //$("#spanValue_0").text(0);
            //$("#spanValue_1").text(0);
            //$("#spanValue_2").text(0);
            //$("#spanValue_3").text(0);
            CustomIDArray = [];
            totalQuestionArray = [];
            markquestionArray = [];
            incorrectasnwerArray = [];
            examskipquestionArray = [];
        }

    });





    $(".TypeofCategoryList").change(function () {
        var sectionList = [];
        $.each($("input[name='TypeofCategoryList']:checked"), function () {
            sectionList.push($(this).val());
        });
        sectionValue = sectionList.join(", ");
        if (sectionValue == "") {
            sectionValue = 0;
        }
        $.ajax({
            type: 'POST',
            data: { sectionValue: sectionValue },
            url: '/ExamManager/GetQuestionTypeCountBySection',
            async: false,
            success: function (result) {
                $("#spanValue_0").text(0);
                $("#spanValue_1").text(0);
                $("#spanValue_2").text(0);
                $("#spanValue_3").text(0);
                $("#spanValue_0").text(result.TotalCount);
                $("#spanValue_1").text(result.SkipCount);
                $("#spanValue_2").text(result.InCorrectCount);
                $("#spanValue_3").text(result.MarkCount);


                if ($("#spanValue_0").text() == 0) {
                    $("#questionfilter_0").attr('disabled', true);

                }
                else {
                    $("#questionfilter_0").removeAttr('disabled');
                }
                if ($("#spanValue_1").text() == 0) {
                    $("#questionfilter_1").attr('disabled', true);
                }
                else {
                    $("#questionfilter_1").removeAttr('disabled');
                }
                if ($("#spanValue_2").text() == 0) {
                    $("#questionfilter_2").attr('disabled', true);
                }
                else {
                    $("#questionfilter_2").removeAttr('disabled');
                }
                if ($("#spanValue_3").text() == 0) {

                    $("#questionfilter_3").attr('disabled', true);
                }
                else {
                    $("#questionfilter_3").removeAttr('disabled');
                }

            }
        });
    });

    $(".TypeofQuestionList").change(function () {
        $("#QuesTypeErr").text("");
        // var CurrentId = $(this).attr('id');
        // var TotalCount = $('#' + CurrentId).attr("totalCount");
        var CurrentId = $(this).attr('value');
        var TotalCount = parseInt($('#spanValue_' + CurrentId).html());
        if (TotalCount == 0) {
            $('#questionfilter_' + CurrentId).attr('checked', false);

        }

    });

    $("#ExamName").on('keypress', function () {
        $(".ExamTitleSpan").text('');
    });
    $("#NoofQuestions").keypress(function (e) {
        $(".NoOfQuesSpan").text('');
    });
    $('#NoofQuestions').on('input', function (event) {
        this.value = this.value.replace(/[^0-9]/g, '');
    });
    $('.TypeofCategoryList').change(function () {
        //uncheck "select all", if one of the listed checkbox item is unchecked
        if (false == $(this).prop("checked")) { //if this item is unchecked
            $("#selectall").prop('checked', false); //change "select all" checked status to false
        }
        //check "select all" if all checkbox items are checked
        if ($('.TypeofCategoryList:checked').length == $('.TypeofCategoryList').length) {
            $("#selectall").prop('checked', true);
        }
    });


    $('#questionfilter_0').change(function () {

        if (true == $(this).prop("checked")) {
            $('#questionfilter_1').attr('checked', false);
            $('#questionfilter_2').attr('checked', false);
            $('#questionfilter_3').attr('checked', false); // Unchecks it

        } else {
            $('#questionfilter_1').attr('disabled', false);
            $('#questionfilter_2').attr('disabled', false);
            $('#questionfilter_3').attr('disabled', false);
        }

    });

    $("#questionfilter_1").on('change', function () {
        $("#questionfilter_0").attr('checked', false);

    })

    $("#questionfilter_2").on('change', function () {
        $("#questionfilter_0").attr('checked', false)
    })

    $("#questionfilter_3").on('change', function () {
        $("#questionfilter_0").attr('checked', false)
    })

    $("#Create").click(function () {
        var totalSum = 0;
        $('#ExamAnswerToShow').removeAttr('disabled');
        var flag = true;
        var isSharedExam = ($('#ExamType').val() === '4');
        if ($("#ExamName").val() == "") {
            $("#ExamName").focus();
            var ExamTitleMsg = "Please enter a unique exam title."
            $(".ExamTitleSpan").text(ExamTitleMsg);
            flag = false;
            return false;
        }
        if ($("#questionfilter_0").prop("checked")) {
            totalSum = 0;
            totalSum = parseInt($('#spanValue_0').html());
        }
        else {
            totalSum = 0;
            if ($("#questionfilter_1").prop("checked")) {
                totalSum += parseInt($('#spanValue_1').html());
            }
            if (true == $("#questionfilter_2").prop("checked")) {
                totalSum += parseInt($('#spanValue_2').html());
            }
            if (true == $("#questionfilter_3").prop("checked")) {
                totalSum += parseInt($('#spanValue_3').html());
            }
        }
        if ($('#custommode:visible').length != 0 && $('#anothermode:visible').length != 0 && $('#quick:visible').length != 0 && $('#custom:visible').length != 0) {
            if ($('.rt [name=TypeofCategoryList]:checkBox:checked').length == 0) {
                $('#selectall').focus();
                var msg = "Please select at least one BCSC section."
                $("#ErrorMsg").text(msg);
                flag = false;
                return false;
            }
            if ($("#NoofQuestions").val() == "") {
                $("#NoofQuestions").focus();
                var QuesErrMsg = "Please enter number of questions."
                $(".NoOfQuesSpan").text(QuesErrMsg);
                flag = false;
                return false;
            }
            if ($("#NoofQuestions").val() > totalSum && (($("#questionfilter_0").prop("checked") == true) || ($("#questionfilter_1").prop("checked") == true) || ($("#questionfilter_2").prop("checked") == true) || ($("#questionfilter_3").prop("checked") == true))) {
                $("#NoofQuestions").focus();
                var QuesErrMsg = "Number of question should not be greater than selected question type."
                $(".NoOfQuesSpan").text(QuesErrMsg);
                flag = false;
                return false;
            }
   
            if ($("#NoofQuestions").val() == 0) {
                $("#NoofQuestions").focus();
                var QuesErrMsg = "Number of question should be greater than zero."
                $(".NoOfQuesSpan").text(QuesErrMsg);
                flag = false;
                return false;
            }
   
            if ($('.rtt [name=TypeofQuestionList]:checkBox:checked').length == 0) {
                var MsgText = "Please select at least one question type."
                $("#QuesTypeErr").text(MsgText);
                flag = false;
                return false;
            }
        }
        else if ($('#anothermode:visible').length != 0 && $('#custom:visible').length != 0) {
   
            if ($("#NoofQuestions").val() == "") {
                $("#NoofQuestions").focus();
                var QuesErrMsg = "Please enter number of questions."
                $(".NoOfQuesSpan").text(QuesErrMsg);
                flag = false;
                return false;
            }
   
            if ($("#NoofQuestions").val() == 0) {
                $("#NoofQuestions").focus();
                var QuesErrMsg = "Number of question should be greater than zero."
                $(".NoOfQuesSpan").text(QuesErrMsg);
                flag = false;
                return false;
            }
   
            if ($("#NoofQuestions").val() > totalSum && (($("#questionfilter_0").prop("checked") == true) || ($("#questionfilter_1").prop("checked") == true) || ($("#questionfilter_2").prop("checked") == true) || ($("#questionfilter_3").prop("checked") == true))) {
                $("#NoofQuestions").focus();
                var QuesErrMsg = "Number of question should not be greater than selected question type."
                $(".NoOfQuesSpan").text(QuesErrMsg);
                flag = false;
                return false;
            }
   
            if ($('.rtt [name=TypeofQuestionList]:checkBox:checked').length == 0) {
   
                var MsgText = "Please select at least one question type."
                $("#QuesTypeErr").text(MsgText);
                flag = false;
                return false;
            }
        }
        if (isSharedExam) {
            // Email validation
            //if (!validateMultipleEmails()) {
            if (!validateEmails()) {
                flag = false;
                return false;
            }
   
            /*
            // Date range validation if enabled
            if ($("#DateRangeEnabled").prop("checked")) {
                var startDate = $("#StartDate").val();
                var endDate = $("#EndDate").val();
   
                if (startDate == "") {
                    $("#StartDate").focus();
                    var StartDateErrMsg = "Please select start date."
                    $(".StartDateSpan").text(StartDateErrMsg);
                    flag = false;
                    return false;
                }
   
                if (endDate == "") {
                    $("#EndDate").focus();
                    var EndDateErrMsg = "Please select end date."
                    $(".EndDateSpan").text(EndDateErrMsg);
                    flag = false;
                    return false;
                }
   
                // Check if end date is after start date
                if (new Date(endDate) <= new Date(startDate)) {
                    $("#EndDate").focus();
                    var DateRangeErrMsg = "End date must be after start date"
                    $(".EndDateSpan").text(DateRangeErrMsg);
                    flag = false;
                    return false;
                }
   
                // Check if start date is not in the past
                var today = new Date();
                today.setHours(0, 0, 0, 0);
   
                var inputDate = new Date(startDate);
                inputDate.setHours(0, 0, 0, 0);
   
                if (inputDate < today) {
                    $("#StartDate").focus();
                    var PastDateErrMsg = "Start date cannot be in the past"
                    $(".StartDateSpan").text(PastDateErrMsg);
                    flag = false;
                    return false;
                }
   
                *//*if (new Date(startDate) < today) {
                $("#StartDate").focus();
                var PastDateErrMsg = "Start date cannot be in the past."
                $(".StartDateSpan").text(PastDateErrMsg);
                flag = false;
                return false;
            }*//*
        }
        */
   
            if ($("#DateRangeEnabled").prop("checked")) {
                var startDateStr = $("#StartDate").val();
                var endDateStr = $("#EndDate").val();
                var todayDate_New = new Date();
   
                console.log("startDateStr - original:", startDateStr);
                console.log("endDateStr - original:", endDateStr);
                console.log("todayDate_New - original", todayDate_New);
   
                var today1 = new Date();
                var year1 = today1.getFullYear();
                var month1 = String(today1.getMonth() + 1).padStart(2, '0'); // getMonth() is 0-indexed
                var day1 = String(today1.getDate()).padStart(2, '0');
                var todayDate = year1 + '-' + month1 + '-' + day1;
   
                console.log("new Date - todayDate :", todayDate);
   
                // Helper: Convert date string to UTC midnight timestamp
                function toUTCDate(dateStr) {
                    /*console.log("  ");
                    console.log("toUTC - dateStr :", dateStr);
                    var d = new Date(dateStr);
                    console.log("toUTC - d :", d);
                    console.log("toUTC - return date :", Date.UTC(d.getFullYear(), d.getMonth(), d.getDate()));
                    return Date.UTC(d.getFullYear(), d.getMonth(), d.getDate());*/
   
                    console.log(" ");
                    console.log("Input dateStr:", dateStr);
   
                    // Split the date string manually to avoid timezone issues
                    var parts = dateStr.split('-');
                    var year = parseInt(parts[0]);
                    var month = parseInt(parts[1]) - 1; // JavaScript months are 0-indexed
                    var day = parseInt(parts[2]);
   
                    console.log("Date components:", year, month + 1, day); // +1 for display
   
                    var utcTimestamp = Date.UTC(year, month, day);
                    console.log("UTC timestamp:", utcTimestamp);
                    console.log("UTC verification:", new Date(utcTimestamp).toUTCString());
   
                    return utcTimestamp;
                }
   
                // Validate start date
                if (!startDateStr) {
                    $("#StartDate").focus();
                    $(".StartDateSpan").text("Please select start date.");
                    flag = false;
                    return false;
                }
   
                // Validate end date
                if (!endDateStr) {
                    $("#EndDate").focus();
                    $(".EndDateSpan").text("Please select end date.");
                    flag = false;
                    return false;
                }
   
                // Convert to UTC timestamps for comparison
                var startDateUTC = toUTCDate(startDateStr);
                var endDateUTC = toUTCDate(endDateStr);
                var todayDateUTC = toUTCDate(todayDate); // Customer's local today
   
                // Log for debugging
                console.log(" ");
                console.log("startDateUTC  - UTC :", startDateUTC);
                console.log("endDateUTC    - UTC :", endDateUTC);
                console.log("todayDateUTC  - UTC :", todayDateUTC);
   
                // Check if end date is after or equal to start date
                if (endDateUTC < startDateUTC) {
                    $("#EndDate").focus();
                    $(".EndDateSpan").text("End date must be after start date.");
                    flag = false;
                    return false;
                }
   
                // Check if start date is not in the past
                if (startDateUTC < todayDateUTC) {
                    $("#StartDate").focus();
                    $(".StartDateSpan").text("Start date cannot be in the past.");
                    flag = false;
                    return false;
                }
   
                //return true;
            }
        }
   
        // ADD THE NEW UTC CONVERSION CODE HERE - RIGHT AFTER VALIDATION, BEFORE FINAL FLAG CHECK
        if (isSharedExam && $("#DateRangeEnabled").prop("checked")) {
            var startDateStr = $("#StartDate").val();
            var endDateStr = $("#EndDate").val();
   
            console.log("=== CONVERTING DATES TO UTC FOR CONTROLLER ===");
            console.log("Original StartDate value:", startDateStr);
            console.log("Original EndDate value:", endDateStr);
   
            if (startDateStr) {
                // Convert to UTC using your toUTCDate function
                var startDateUTCTimestamp = toUTCDate(startDateStr);
                var startDateUTCString = new Date(startDateUTCTimestamp).toISOString();
   
                // Create hidden field instead of modifying the date input
                if ($('#StartDateUTCHidden').length === 0) {
                    $('<input>').attr({
                        type: 'hidden',
                        id: 'StartDateUTCHidden',
                        name: 'StartDateUTCHidden',
                        value: startDateUTCString
                    }).appendTo('#createExam');
                } else {
                    $('#StartDateUTCHidden').val(startDateUTCString);
                }
   
                console.log("StartDate UTC stored in hidden field:", startDateUTCString);
            }
   
            if (endDateStr) {
                // Convert to UTC using your toUTCDate function  
                var endDateUTCTimestamp = toUTCDate(endDateStr);
                var endDateUTCString = new Date(endDateUTCTimestamp).toISOString();
   
                // Create hidden field instead of modifying the date input
                if ($('#EndDateUTCHidden').length === 0) {
                    $('<input>').attr({
                        type: 'hidden',
                        id: 'EndDateUTCHidden',
                        name: 'EndDateUTCHidden',
                        value: endDateUTCString
                    }).appendTo('#createExam');
                } else {
                    $('#EndDateUTCHidden').val(endDateUTCString);
                }
   
                console.log("EndDate UTC stored in hidden field:", endDateUTCString);
            }
   
            console.log("=== UTC DATES SENT TO CONTROLLER VIA HIDDEN FIELDS ===");
        }
   
        if (flag == true) {
            $("#Create").prop('disabled', true);
        }
    });
    

    $('#ExamName').blur(function () {
        var url = "/ExamManager/CheckExamNameAvailable";
        var name = $('#ExamName').val();
        $(".SameNameErrSpan").text('');
        $("#Create").attr('disabled', false);
        $.get(url, { ExamName: name }, function (data) {
            if (data != "Available") {

                var CommonNameMsg = "Please enter a unique exam title"
                $(".SameNameErrSpan").text(CommonNameMsg);
                $(".ExamTitleSpan").text('');
                $("#ExamName").focus();
                $("#Create").attr('disabled', true);
            }
        });
    })
    // Total Number of Question count Code
    //increment and decremrnt QuestionType count on base of category selection
    $(".TypeofCategoryList").click(function (e) {
        var arrTotalQuestion = totalQuestionArray;
        var arrmarkquestion = markquestionArray;
        var arrincorrectasnwer = incorrectasnwerArray;
        var arrexamskipquestion = examskipquestionArray;
        var arr = CustomIDArray;

        var checkedId = $(this).attr('value');
        var totalquestioncountId = $(this).attr('totalcount');
        var markquestioncountId = $(this).attr('markquestioncount');
        var incorrectasnwercountId = $(this).attr('incorrectasnwercount');
        var examskipquestioncountId = $(this).attr('examskipquestioncount');

        if ($(this).prop('checked')) {
            CustomIDArray.push(checkedId);
            totalQuestionArray.push(totalquestioncountId);
            markquestionArray.push(markquestioncountId);
            incorrectasnwerArray.push(incorrectasnwercountId);
            examskipquestionArray.push(examskipquestioncountId);

            arr = CustomIDArray;
            arrTotalQuestion = totalQuestionArray;
            arrmarkquestion = markquestionArray;
            arrincorrectasnwer = incorrectasnwerArray;
            arrexamskipquestion = examskipquestionArray;

        } else {
            jQuery.each(CustomIDArray, function (i, item) {
                if (CustomIDArray[i] == checkedId) {
                    arr.splice(i, 1);
                    arrTotalQuestion.splice(i, 1);
                    arrmarkquestion.splice(i, 1);
                    arrincorrectasnwer.splice(i, 1);
                    arrexamskipquestion.splice(i, 1);
                }
            });
            CustomIDArray = arr;
            totalQuestionArray = arrTotalQuestion;
            markquestionArray = arrmarkquestion;
            incorrectasnwerArray = arrincorrectasnwer;
            examskipquestionArray = arrexamskipquestion;
        }
        var allids = "";
        var allsum = 0;
        jQuery.each(totalQuestionArray, function (i, item) {
            if (allids == "") {
                allids = totalQuestionArray[i];
            } else {
                allids = allids + "," + totalQuestionArray[i];
            }
        });
        var makrkids = "";
        var marksum = 0;
        jQuery.each(markquestionArray, function (i, item) {
            if (makrkids == "") {
                makrkids = markquestionArray[i];
            } else {
                makrkids = makrkids + "," + markquestionArray[i];
            }
        });
        var incorrectids = "";
        var incorrectsum = 0;
        jQuery.each(incorrectasnwerArray, function (i, item) {
            if (incorrectids == "") {
                incorrectids = incorrectasnwerArray[i];
            } else {
                incorrectids = incorrectids + "," + incorrectasnwerArray[i];
            }
        });
        var examskipquestionids = "";
        var examskipquestionsum = 0;
        jQuery.each(examskipquestionArray, function (i, item) {
            if (examskipquestionids == "") {
                examskipquestionids = examskipquestionArray[i];
            } else {
                examskipquestionids = examskipquestionids + "," + examskipquestionArray[i];
            }
        });

        for (var i = 0; i < totalQuestionArray.length; i++) {
            allsum += totalQuestionArray[i] << 0;
        }

        for (var i = 0; i < markquestionArray.length; i++) {
            marksum += markquestionArray[i] << 0;
        }

        for (var i = 0; i < incorrectasnwerArray.length; i++) {
            incorrectsum += incorrectasnwerArray[i] << 0;
        }

        for (var i = 0; i < examskipquestionArray.length; i++) {
            examskipquestionsum += examskipquestionArray[i] << 0;
        }



    });
    $("#Cancel").on('click', function () {
        localStorage.removeItem('examQuestionLimit');
        localStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('examQuestionLimit');
        sessionStorage.removeItem('selectedQuestionIds');
        sessionStorage.removeItem('buildExamFormData');
        sessionStorage.removeItem('cameFromSearchPage');
        if ($("#ExamType").val() == "0") {
            // Custom Exam reset
            $("#NoofQuestions").val('');
            $('#selectall').attr('checked', false);
            $('.TypeofCategoryList').attr('checked', false);
            $('#questionfilter_0').attr('checked', false);
            $('#questionfilter_1').attr('checked', false);
            $('#questionfilter_2').attr('checked', false);
            $('#questionfilter_3').attr('checked', false); // Unchecks it
            $('#ExamTimeType').prop('checked', false);
            $('#DateRangeEnabled').prop('checked', false);
            $("#ExamAnswerToShow").prop('checked', false);
            $("#exammode12 .toggle-switch-checkbox").attr('checked', false);
            $(".ExamTitleSpan").text('');
            $("#ErrorMsg").text('');
            $(".NoOfQuesSpan").text('');
        }
        else if ($("#ExamType").val() == "4") {
            resetSharedExam();
        }
        else {
            // Other exam types reset
            $("#NoofQuestions").val('');
            $('#selectall').attr('checked', false);
            $('.TypeofCategoryList').attr('checked', false);
            $('#questionfilter_0').attr('checked', false);
            $('#questionfilter_1').attr('checked', false);
            $('#questionfilter_2').attr('checked', false);
            $('#questionfilter_3').attr('checked', false); // Unchecks it
            $('#ExamTimeType').prop('checked', false);
            $('#DateRangeEnabled').prop('checked', false);
            $('#ShowDetailedAnswers').prop('checked', false);
            $('#ShowAnsAfterExamCompletion').prop('checked', false);
            $("#ExamAnswerToShow").prop('checked', false);
            $("#exammode12 .toggle-switch-checkbox").attr('checked', false);
            $(".ExamTitleSpan").text('');
            $("#ErrorMsg").text('');
            $(".NoOfQuesSpan").text('');
        }
    });

    function resetSharedExam() {
        //console.log("Resetting Shared Exam...");

        // Reset basic form fields
        $("#NoofQuestions").val(''); // Make blank

        // Reset all checkboxes using prop
        $('#selectall').prop('checked', false);
        $('.TypeofCategoryList').prop('checked', false);
        $('#questionfilter_0').prop('checked', false);
        $('#questionfilter_1').prop('checked', false);
        $('#questionfilter_2').prop('checked', false);
        $('#questionfilter_3').prop('checked', false);
        $('#ExamTimeType').prop('checked', false);

        // Reset Date Range - uncheck and disable fields
        $('#DateRangeEnabled').prop('checked', false);
        $('#StartDate').val('').prop('disabled', true);
        $('#EndDate').val('').prop('disabled', true);

        // Reset other toggles
        $('#ShowDetailedAnswers').prop('checked', false);
        $('#ShowAnsAfterExamCompletion').prop('checked', false);
        $("#ExamAnswerToShow").prop('checked', true); // Default to true for shared exam
        $("#ExamMode").prop('checked', false);

        // Reset toggle switches
        $("#exammode12 .toggle-switch-checkbox").prop('checked', false);

        // Reset shared exam specific fields
        if (typeof window.clearAllEmails === 'function') {
            window.clearAllEmails();
        } else {
            $('#EmailId').val(''); // Fallback
        }
        $('#sharedExamSearch').val(''); // Make search questions blank

        // Handle NumberOfCustomisedQuestions field (might have different name)
        if ($('#NumberOfCustomisedQuestions').length > 0) {
            $('#NumberOfCustomisedQuestions').val('0');
        }
        if ($('input[name="NumberOfCustomisedQuestions"]').length > 0) {
            $('input[name="NumberOfCustomisedQuestions"]').val('0');
        }

        // Clear all error messages
        $(".ExamTitleSpan").text('');
        $("#ErrorMsg").text('');
        $(".NoOfQuesSpan").text('');
        $(".EmailIdSpan").text('');
        $(".StartDateSpan").text('');
        $(".EndDateSpan").text('');

        // Reset question counts
        $("#spanValue_0").text(0);
        $("#spanValue_1").text(0);
        $("#spanValue_2").text(0);
        $("#spanValue_3").text(0);

        // Reset arrays
        CustomIDArray = [];
        totalQuestionArray = [];
        markquestionArray = [];
        incorrectasnwerArray = [];
        examskipquestionArray = [];

        // Trigger date range toggle to ensure proper UI state
        setTimeout(function () {
            if (typeof disableDateRangeFeatures === 'function') {
                disableDateRangeFeatures();
            } else {
                // Manual disable if function not available
                $('#StartDate, #EndDate').prop('disabled', true);
                $('#dateRangeToggleSwitch').removeClass('active');
            }

            // Force trigger change event to update UI
            $('#DateRangeEnabled').trigger('change');
        }, 100);

        //console.log("Shared Exam reset completed");
    }


    var CurrentId = $(this).attr('value');
    var TotalCount = parseInt($('#spanValue_' + CurrentId).html());

    var actualExamType = (selectedExamType == '4') ? selectedExamType : 0;
    //console.log("actualExamType:", actualExamType);

    // Function to handle exam type change and form population
    function setExamTypeAndPopulateForm(examTypeValue) {
        //console.log("Setting exam type to:", examTypeValue);
        $('#ExamType').val(examTypeValue);
        $('#ExamType').trigger('change', [{ value: parseInt(examTypeValue) }]);

        // Populate form fields after exam type is set (with a small delay)
        setTimeout(function () {
            if (typeof populateFormFields === 'function') {
                populateFormFields();
            }
        }, 200);
    }

    if (preserveFormData && actualExamType && actualExamType == "4") {
        //console.log("Using preserved form data logic with actualExamType:", actualExamType);
        setExamTypeAndPopulateForm(actualExamType);
    }
    //  Default case
    else {
        //console.log("Using default exam type (Custom)");
        setExamTypeAndPopulateForm('0');
    }
})();

$(document).ready(function () {
    if (window.location.hash === '#QuickExam') {
        $('#ExamType').val('2'); // Assuming 2 = Quick Exam
        $('#ExamType').trigger('change'); // Apply UI changes
    }
});

//This function to hide 'Shared Exam button'
$(document).ready(function () {
    // Function to get current ExamType value and show/hide button
    function toggleSharedExamButton() {
        //var examTypeValue = $('#ExamType').val(); // Always get the latest value
        if (hasSharedExams) { //&& examTypeValue == '4'
            $('#btnGoToSharedExam').show();
        } else {
            $('#btnGoToSharedExam').hide();
        }
    }

    // Initial check on page load
    toggleSharedExamButton();

    // On dropdown change
    $('#ExamType').on('change', toggleSharedExamButton);
});

// =================
// EXAM TYPE TOGGLE
// =================
function toggleSharedExamFields() {
    var selectedExamType = $('#ExamType').val();
    if (selectedExamType === '4') {
        $('#SharedExamFields').show();
        $('#shared-exam-search-div').show();
    } else {
        $('#SharedExamFields').hide();
        $('#shared-exam-search-div').hide();
    }
}

$('#ExamType').change(function () {
    toggleSharedExamFields();
});

$('#sharedExamSearch').keypress(function (e) {
    if (e.which === 13) { // Enter key
        // e.preventDefault(); // Prevent form submission
        searchAAOSharedExam();
        return false;
    }
});

// Handle search button click
$('#sharedExamSearchButton').click(function (e) {
    e.preventDefault();
    searchAAOSharedExam();
});

// Initial check on page load
toggleSharedExamFields();

function searchAAOSharedExam() {
    let searchitem = $('#sharedExamSearch').val();

    if (searchitem.trim() !== "") {
        // Collect form data from the current Build Exam form, passing the search term
        var formData = collectSharedExamFormData(searchitem.trim());

        // Validate that we have minimum required data
        if (!formData.ExamName || formData.ExamName.trim() === "") {
            alert('Please enter an exam name before searching for questions.');
            return;
        }

        // Store form data in sessionStorage for retrieval on search page
        try {
            sessionStorage.setItem('buildExamFormData', JSON.stringify(formData));
            sessionStorage.setItem('cameFromSearchPage', 'true');

            // Navigate to search page with search term and indication that this is from build exam
            var searchUrl = '/SearchByExam/SearchBySharedExam?SearchTerm=' + encodeURIComponent(searchitem.trim()) +
                '&Filter=All&fromBuildExam=true';

            window.location.href = searchUrl;

        } catch (error) {
            console.error('Error storing form data:', error);
            // Fall back to the original POST method if sessionStorage fails
            searchAAOSharedExamOriginal();
        }

    } else {
        alert('Please enter a search term');
    }
}

// Keep the original function as backup
function searchAAOSharedExamOriginal() {
    let searchitem = $('#sharedExamSearch').val();

    if (searchitem.trim() !== "") {
        // Collect form data, passing the search term
        var formData = collectSharedExamFormData(searchitem.trim());

        // Create a temporary form to submit data via POST
        var form = $('<form>', {
            'method': 'POST',
            'action': '/SearchByExam/SearchBySharedExam'
        });

        // Add search term
        form.append($('<input>', {
            'type': 'hidden',
            'name': 'SearchTerm',
            'value': searchitem.trim()
        }));

        // Add filter
        form.append($('<input>', {
            'type': 'hidden',
            'name': 'Filter',
            'value': 'All'
        }));

        // Add all form data as hidden fields
        $.each(formData, function (key, value) {
            if (Array.isArray(value)) {
                // Handle arrays (like selected checkboxes)
                $.each(value, function (index, item) {
                    form.append($('<input>', {
                        'type': 'hidden',
                        'name': key,
                        'value': item
                    }));
                });
            } else {
                form.append($('<input>', {
                    'type': 'hidden',
                    'name': key,
                    'value': value
                }));
            }
        });

        // Add anti-forgery token
        var token = $('input[name="__RequestVerificationToken"]').val();
        if (token) {
            form.append($('<input>', {
                'type': 'hidden',
                'name': '__RequestVerificationToken',
                'value': token
            }));
        }

        // Append form to body and submit
        form.appendTo('body').submit();

    } else {
        alert('Please enter a search term');
    }
}

function collectSharedExamFormData(searchTerm) {
    var formData = {};

    try {
        // Add the search term to form data
        formData.SearchTerm = searchTerm || '';

        // Basic exam details with null checks
        var examTypeElement = $('select[name="ExamType"]');
        var examNameElement = $('input[name="ExamName"]');
        var noOfQuestionsElement = $('input[name="NoofQuestions"]');

        formData.selectedExamType = examTypeElement.length > 0 ? (examTypeElement.val() || '') : '';
        formData.ExamName = examNameElement.length > 0 ? (examNameElement.val() || '') : '';
        formData.NoofQuestions = noOfQuestionsElement.length > 0 ? (noOfQuestionsElement.val() || '') : '';

        // Exam settings with existence checks
        formData.ExamMode = $('input[name="ExamMode"]').length > 0 ? $('input[name="ExamMode"]').is(':checked') : false;
        formData.ExamAnswerToShow = $('input[name="ExamAnswerToShow"]').length > 0 ? $('input[name="ExamAnswerToShow"]').is(':checked') : false;
        formData.ExamTimeType = $('input[name="ExamTimeType"]').length > 0 ? $('input[name="ExamTimeType"]').is(':checked') : false;

        // Shared exam specific fields
        formData.ShowDetailedAnswers = $('input[name="ShowDetailedAnswers"]').length > 0 ? $('input[name="ShowDetailedAnswers"]').is(':checked') : false;
        formData.ShowAnsAfterExamCompletion = $('input[name="ShowAnsAfterExamCompletion"]').length > 0 ? $('input[name="ShowAnsAfterExamCompletion"]').is(':checked') : false;
        formData.DateRangeEnabled = $('input[name="DateRangeEnabled"]').length > 0 ? $('input[name="DateRangeEnabled"]').is(':checked') : false;
        formData.StartDate = $('input[name="StartDate"]').length > 0 ? ($('input[name="StartDate"]').val() || '') : '';
        formData.EndDate = $('input[name="EndDate"]').length > 0 ? ($('input[name="EndDate"]').val() || '') : '';
        // Handle multiple emails
        var emailValue = '';
        if (typeof window.getSelectedEmails === 'function') {
            var emails = window.getSelectedEmails();
            emailValue = emails.join(',');
        } else {
            emailValue = $('input[name="EmailId"]').length > 0 ? ($('input[name="EmailId"]').val() || '') : '';
        }
        formData.EmailId = emailValue;
        formData.NumberOfCustomisedQuestions = $('input[name="NumberOfCustomisedQuestions"]').length > 0 ?
            ($('input[name="NumberOfCustomisedQuestions"]').val() || '') : '';

        // Collect selected BCSC sections
        var selectedSections = [];
        $('input[name="TypeofCategoryList"]:checked').each(function () {
            if ($(this).val() !== '') {
                selectedSections.push($(this).val());
            }
        });
        formData.TypeofCategoryList = selectedSections;

        // Collect selected question types
        var selectedQuestionTypes = [];
        $('input[name="TypeofQuestionList"]:checked').each(function () {
            if ($(this).val() !== '') {
                selectedQuestionTypes.push($(this).val());
            }
        });
        formData.TypeofQuestionList = selectedQuestionTypes;

        //console.log('Collected form data:', formData);

    } catch (error) {
        console.error('Error collecting form data:', error);
        // Return minimal data structure to prevent complete failure
        formData = {
            SearchTerm: searchTerm || '',
            selectedExamType: '',
            ExamName: 'New Exam',
            NoofQuestions: '10',
            ExamMode: false,
            ExamAnswerToShow: false,
            ExamTimeType: false,
            ShowDetailedAnswers: false,
            ShowAnsAfterExamCompletion: false,
            DateRangeEnabled: false,
            StartDate: '',
            EndDate: '',
            EmailId: '',
            NumberOfCustomisedQuestions: '',
            TypeofCategoryList: [],
            TypeofQuestionList: [],
            error: error.message
        };
    }

    return formData;
}

$('#sharedExamSearch').keypress(function (e) {
    var key = e.which;
    if (key == 13)  // the enter key code
    {
        searchAAOSharedExam();
        return false;
    }
});
// ======================
// DATE RANGE TOGGLE 
// ======================
function initializeDateRangeToggle() {
    $('#DateRangeEnabled').off('change.dateRange');

    var initialState = $('#DateRangeEnabled').is(':checked');
    toggleDateRangeFields(initialState);

    $('#DateRangeEnabled').on('change.dateRange', function () {
        var isEnabled = $(this).is(':checked');
        //console.log('Date range toggle changed to:', isEnabled);
        toggleDateRangeFields(isEnabled);
    });
}

function toggleDateRangeFields(isEnabled) {
    if (isEnabled) {
        enableDateRangeFeatures();
    } else {
        disableDateRangeFeatures();
    }
}

function enableDateRangeFeatures() {
    //console.log('Enabling date range features...');

    $('#StartDate, #EndDate').prop('disabled', false);

    $('#StartDate, #EndDate').attr('required', true);

    $('#dateRangeToggleSwitch').addClass('active');

    updateDateRangeToggleVisual(true);

    //console.log('Date range enabled - fields should now be active');
}

function disableDateRangeFeatures() {
    //console.log('Disabling date range features...');

    $('#StartDate, #EndDate').prop('disabled', true);

    $('.date-required-star').hide();

    $('#StartDate, #EndDate').removeAttr('required');

    $('#StartDate, #EndDate').val('');
    $('.StartDateSpan, .EndDateSpan').text('');

    $('#dateRangeToggleSwitch').removeClass('active');

    updateDateRangeToggleVisual(false);

    //console.log('Date range disabled - fields should now be inactive');
}

function updateDateRangeToggleVisual(isEnabled) {
    var toggleSwitch = $('#dateRangeToggleSwitch');
    var toggleInner = toggleSwitch.find('.toggle-switch-inner');
    var toggleSwitchElement = toggleSwitch.find('.toggle-switch-switch');

    if (isEnabled) {
        toggleSwitch.addClass('active');
        toggleInner.addClass('active');
        toggleSwitchElement.addClass('active');
    } else {
        toggleSwitch.removeClass('active');
        toggleInner.removeClass('active');
        toggleSwitchElement.removeClass('active');
    }
}

// Initialize on page load
initializeDateRangeToggle();

// ======================
// MULTIPLE EMAIL SUPPORT
// ======================

// Global variable to store selected emails
var selectedEmails = [];

// Initialize email functionality
function initializeMultipleEmailSupport() {
    // Only initialize if the container doesn't exist yet
    if ($('#selectedEmailsContainer').length === 0) {
        //console.log("Multiple email container not found, initialization skipped");
        return;
    }

    //console.log("Initializing multiple email support...");
    setupMultipleEmailHandlers();
}

// Setup event handlers for multiple email functionality
function setupMultipleEmailHandlers() {
    var emailInput = $('#emailInput');
    var suggestionsContainer = $('#emailSuggestions');
    var selectedIndex = -1;
    var currentSuggestions = [];

    //console.log("Setting up multiple email handlers...");

    // Add email to selected list
    function addEmail(email) {
        if (!email || email.trim() === '') return false;

        email = email.trim().toLowerCase();

        // Check if email is valid
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailPattern.test(email)) {
            showEmailError('Please enter a valid email address.');
            return false;
        }

        // Check if email already exists
        if (selectedEmails.indexOf(email) !== -1) {
            showEmailError('This email address is already added.');
            return false;
        }

        // Add to selected emails array
        selectedEmails.push(email);

        // Update UI
        updateSelectedEmailsDisplay();
        updateHiddenField();
        clearEmailInput();
        clearEmailError();

        return true;
    }

    // Remove email from selected list
    function removeEmail(email) {
        var index = selectedEmails.indexOf(email);
        if (index > -1) {
            selectedEmails.splice(index, 1);
            updateSelectedEmailsDisplay();
            updateHiddenField();
            clearEmailError();
        }
    }

    // Update the visual display of selected emails
    function updateSelectedEmailsDisplay() {
        var container = $('#selectedEmailsContainer');
        container.empty();

        selectedEmails.forEach(function (email) {
            /*var emailChip = $('<div class="email-chip" data-email="' + email + '">' +
                '<span class="email-text">' + email + '</span>' +
                '<span class="email-remove">&times;</span>' +
                '</div>');*/

            var emailChip = $('<div class="email-chip" data-email="' + email + '" style="display: flex; align-items: center; border-radius: 20px; padding: 5px 10px; margin: 5px;">' +
                '<span class="email-text" style="margin-right: 10px;">' + email + '</span>' +
                '<span class="email-remove" style="cursor: pointer; color: red; font-weight: bold;">&times;</span>' +
                '</div>');


            // Add click handler for remove button
            emailChip.find('.email-remove').click(function () {
                removeEmail(email);
            });

            container.append(emailChip);
        });
    }

    // Update hidden field with comma-separated emails
    function updateHiddenField() {
        $('#EmailIdHidden').val(selectedEmails.join(','));
    }

    // Clear email input
    function clearEmailInput() {
        emailInput.val('');
        hideSuggestions();
    }

    // Show email error
    function showEmailError(message) {
        $('.EmailIdSpan').text(message);
    }

    // Clear email error
    function clearEmailError() {
        $('.EmailIdSpan').text('');
    }

    // Email input event handlers
    // Email input event handlers
    emailInput.on('keydown', function (e) {
        var suggestions = $('.email-suggestion-item');
        var suggestionsCount = suggestions.length;

        // Handle suggestions navigation first (when suggestions are visible)
        if (suggestionsContainer.is(':visible') && suggestionsCount > 0) {
            switch (e.keyCode) {
                case 40: // Down arrow
                    e.preventDefault();
                    selectedIndex = (selectedIndex + 1) % suggestionsCount;
                    updateSelection();
                    return false;

                case 38: // Up arrow
                    e.preventDefault();
                    selectedIndex = selectedIndex <= 0 ? suggestionsCount - 1 : selectedIndex - 1;
                    updateSelection();
                    return false;

                case 13: // Enter key - select highlighted suggestion
                    e.preventDefault();
                    if (selectedIndex >= 0) {
                        selectSuggestion(selectedIndex);
                    } else {
                        // If no suggestion is selected, add the typed email
                        var email = emailInput.val().trim();
                        if (email) {
                            addEmail(email);
                        }
                    }
                    return false;

                case 27: // Escape
                    e.preventDefault();
                    hideSuggestions();
                    return false;
            }
        }

        // Handle regular input when suggestions are not visible
        if (e.keyCode === 13) { // Enter key
            e.preventDefault();
            var email = emailInput.val().trim();
            if (email) {
                addEmail(email);
            }
            return false;
        } else if (e.keyCode === 188 || e.keyCode === 32) { // Comma or Space
            e.preventDefault();
            var email = emailInput.val().trim();
            if (email) {
                addEmail(email);
            }
            return false;
        }
    });

    emailInput.on('input', function () {
        var value = $(this).val().trim();
        if (value.length >= 1) {
            fetchEmailSuggestions(value);
        } else {
            hideSuggestions();
        }
        clearEmailError();
    });

    emailInput.on('blur', function () {
        setTimeout(function () {
            var email = emailInput.val().trim();
            if (email) {
                addEmail(email);
            }
        }, 150);
    });

    // Fetch email suggestions from database
    function fetchEmailSuggestions(searchTerm) {
        $.ajax({
            url: '/ExamManager/SearchEmails',
            type: 'GET',
            data: { term: searchTerm },
            dataType: 'json',
            success: function (data) {
                // Filter out already selected emails
                var filteredData = data.filter(function (item) {
                    var email = (item.email || item.Email || '').toLowerCase();
                    return selectedEmails.indexOf(email) === -1;
                });
                displayEmailSuggestions(filteredData);
            },
            error: function (xhr, status, error) {
                console.log('Error fetching email suggestions:', error);
                hideSuggestions();
            }
        });
    }

    // Display email suggestions
    function displayEmailSuggestions(suggestions) {
        currentSuggestions = suggestions;
        suggestionsContainer.empty();

        if (suggestions.length === 0) {
            hideSuggestions();
            return;
        }

        $.each(suggestions, function (index, item) {
            var emailAddress = item.email || item.Email || '';
            var displayLabel = item.label || emailAddress;

            var suggestionHtml = $('<div class="email-suggestion-item" data-index="' + index + '">' +
                '<div class="email-address">' + displayLabel + '</div>' +
                '</div>');

            suggestionHtml.click(function () {
                selectSuggestion(index);
            });

            suggestionHtml.mouseenter(function () {
                selectedIndex = index;
                updateSelection();
            });

            suggestionsContainer.append(suggestionHtml);
        });

        suggestionsContainer.show();
        selectedIndex = -1;
    }

    // Hide suggestions
    function hideSuggestions() {
        suggestionsContainer.hide();
        selectedIndex = -1;
    }

    // Select suggestion
    function selectSuggestion(index) {
        if (index >= 0 && index < currentSuggestions.length) {
            var selectedEmail = currentSuggestions[index].email || currentSuggestions[index].Email || '';
            if (selectedEmail) {
                addEmail(selectedEmail);
            }
        }
    }

    // Update selection highlighting
    function updateSelection() {
        var suggestions = $('.email-suggestion-item');
        suggestions.removeClass('selected');
        if (selectedIndex >= 0 && selectedIndex < suggestions.length) {
            suggestions.eq(selectedIndex).addClass('selected');
        }
    }



    // Hide suggestions when clicking outside
    $(document).on('click', function (e) {
        if (!emailInput.is(e.target) &&
            !suggestionsContainer.is(e.target) &&
            suggestionsContainer.has(e.target).length === 0) {
            hideSuggestions();
        }
    });

    // Store functions globally for external access
    window.addEmailToSelection = addEmail;
    window.removeEmailFromSelection = removeEmail;
    window.getSelectedEmails = function () { return selectedEmails.slice(); };
    window.clearAllEmails = function () {
        selectedEmails = [];
        updateSelectedEmailsDisplay();
        updateHiddenField();
        clearEmailError();
    };
    window.setSelectedEmails = function (emails) {
        selectedEmails = [];
        if (Array.isArray(emails)) {
            emails.forEach(function (email) {
                if (email && email.trim()) {
                    selectedEmails.push(email.trim().toLowerCase());
                }
            });
        } else if (typeof emails === 'string' && emails.trim()) {
            emails.split(',').forEach(function (email) {
                if (email && email.trim()) {
                    selectedEmails.push(email.trim().toLowerCase());
                }
            });
        }
        updateSelectedEmailsDisplay();
        updateHiddenField();
    };

    //console.log("Multiple email handlers setup complete");
}

/*
// Function to validate multiple emails
function validateMultipleEmails() {
    if (selectedEmails.length === 0) {
        $('#emailInput').focus();
        $('.EmailIdSpan').text('Please enter at least one recipient email address.');
        return false;
    }

    // Validate each email format
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    for (var i = 0; i < selectedEmails.length; i++) {
        if (!emailPattern.test(selectedEmails[i])) {
            $('.EmailIdSpan').text('Please ensure all email addresses are valid.');
            return false;
        }
    }

    $('.EmailIdSpan').text('');
    return true;
}
*/

// UPDATED EMAIL VALIDATION - Handles both "email,email" and "email, email" formats
function validateEmails(emailString) {
    if (!emailString || emailString.trim() === '') {
        return { isValid: false, message: 'Please enter at least one recipient email address.' };
    }

    // Split by comma and clean up each email (remove extra spaces)
    var emails = emailString
        .split(',')
        .map(email => email.trim()) // This removes spaces before/after each email
        .filter(email => email !== ''); // Remove empty strings

    if (emails.length === 0) {
        return { isValid: false, message: 'Please enter at least one recipient email address.' };
    }

    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    var invalidEmails = [];

    emails.forEach(function (email) {
        if (!emailRegex.test(email)) {
            invalidEmails.push(email);
        }
    });

    if (invalidEmails.length > 0) {
        return {
            isValid: false,
            message: 'Please ensure all email addresses are valid.  Invalid:  ' + invalidEmails.join(', ')
        };
    }

    return { isValid: true, message: '', emails: emails };
}

// Real-time validation on email input
//$(document).ready(function () {
//    // TEMPORARY DEBUG CODE - Add this to see what's happening
//    $('#emailInput').on('blur', function () {
//        var emailValue = $(this).val();
//        console.log("Email input value:", emailValue);
//
//        var validation = validateEmails(emailValue);
//        console.log("Validation result:", validation);
//
//        $('.EmailIdSpan').text(validation.message);
//
//        if (validation.isValid) {
//            $(this).removeClass('error-border');
//            console.log("Validation passed!");
//        } else {
//            $(this).addClass('error-border');
//            console.log("Validation failed:", validation.message);
//        }
//    });
//});

// Initialize multiple email support when page loads
$(document).ready(function () {
    // Initialize when exam type changes to shared
    $('#ExamType').change(function () {
        if ($(this).val() === '4') {
            setTimeout(function () {
                initializeMultipleEmailSupport();
            }, 200);
        }
    });

    // Initialize if already set to shared exam
    if ($('#ExamType').val() === '4') {
        setTimeout(function () {
            initializeMultipleEmailSupport();
        }, 200);
    }
});

// Add this near the end of your JS (after your init/preserve logic).
// Behavior: if saved formData (or sessionStorage.buildExamFormData) explicitly contains
// DateRangeEnabled=true -> enable StartDate/EndDate and restore values.
// if saved formData explicitly contains DateRangeEnabled=false -> disable StartDate/EndDate.
// If no saved formData is present, this snippet does nothing (leaves default behavior intact).
$(document).ready(function () {
    try {
        var fd = null;

        // prefer in-memory `formData` if present
        if (typeof formData !== 'undefined' && formData && typeof formData.DateRangeEnabled !== 'undefined') {
            fd = formData;
        } else {
            // fallback to sessionStorage where you put buildExamFormData
            var raw = sessionStorage.getItem('buildExamFormData');
            if (raw) {
                try { fd = JSON.parse(raw); } catch (e) { fd = null; console.error('parse buildExamFormData', e); }
            }
        }

        // If we don't have a saved formData, do nothing (preserve default behavior)
        if (!fd) return;

        // Normalize the flag
        var flag = fd.DateRangeEnabled;
        var isTrue = (flag === true || flag === 'true' || flag === 1 || flag === '1');
        var isFalse = (flag === false || flag === 'false' || flag === 0 || flag === '0');

        if (isTrue) {
            // Keep UI consistent: set checkbox and enable inputs, restore values if present
            $('#DateRangeEnabled').prop('checked', true);

            if (fd.StartDate && fd.StartDate.toString().trim() !== '') {
                $('#StartDate').val(fd.StartDate);
            }
            if (fd.EndDate && fd.EndDate.toString().trim() !== '') {
                $('#EndDate').val(fd.EndDate);
            }

            $('#StartDate, #EndDate').prop('disabled', false);

            if (typeof toggleDateRangeFields === 'function') {
                toggleDateRangeFields(true);
            } else if (typeof enableDateRangeFeatures === 'function') {
                enableDateRangeFeatures();
            }
        } else if (isFalse) {
            // Saved data explicitly says disabled -> ensure inputs are disabled
            $('#DateRangeEnabled').prop('checked', false);
            $('#StartDate, #EndDate').prop('disabled', true);

            if (typeof toggleDateRangeFields === 'function') {
                toggleDateRangeFields(false);
            } else if (typeof disableDateRangeFeatures === 'function') {
                disableDateRangeFeatures();
            }
        }
        // If flag is neither explicit true nor explicit false, do nothing and preserve defaults.
    } catch (ex) {
        console.error('restore DateRange state error:', ex);
        // Do not change default functionality on error
    }
});
