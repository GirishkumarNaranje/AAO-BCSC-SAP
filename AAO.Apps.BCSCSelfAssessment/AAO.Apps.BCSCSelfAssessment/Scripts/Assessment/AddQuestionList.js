var AAO_STORE_KEY = "selectedQuestionIds";
var AAO_LIMIT_KEY = "examQuestionLimit";

function readJsonStorage(key) {
    try {
        var v = localStorage.getItem(key);
        if (!v) v = sessionStorage.getItem(key);
        return v ? JSON.parse(v) : null;
    } catch (e) { return null; }
}
function writeJsonStorage(key, obj) {
    var s = JSON.stringify(obj || []);
    try { localStorage.setItem(key, s); } catch (e) { }
    try { sessionStorage.setItem(key, s); } catch (e) { }
}
function readTextStorage(key) {
    try {
        return localStorage.getItem(key) || sessionStorage.getItem(key) || "";
    } catch (e) { return ""; }
}
function writeTextStorage(key, val) {
    try { localStorage.setItem(key, val); } catch (e) { }
    try { sessionStorage.setItem(key, val); } catch (e) { }
}

/* ------------ state (always rehydrate + dedupe) ------------ */
function loadSelectedIds() {
    var loaded = readJsonStorage(AAO_STORE_KEY);
    if (!Array.isArray(loaded)) loaded = [];
    // force strings and dedupe
    var seen = {};
    var out = [];
    for (var i = 0; i < loaded.length; i++) {
        var qid = String(loaded[i]);
        if (!seen[qid]) { seen[qid] = true; out.push(qid); }
    }
    return out;
}
var selectedQuestionIds = loadSelectedIds();

function saveSelectedIds() {
    // always save deduped list
    var dedup = [];
    var seen = {};
    for (var i = 0; i < selectedQuestionIds.length; i++) {
        var qid = String(selectedQuestionIds[i]);
        if (!seen[qid]) { seen[qid] = true; dedup.push(qid); }
    }
    selectedQuestionIds = dedup;
    writeJsonStorage(AAO_STORE_KEY, selectedQuestionIds);
}

/* ------------ general helpers ------------ */
function checkLength() {
    var textbox = document.getElementById("searchTerm");
    if (textbox.value.length <= 2) {
        //alert("Please enter minimum 3 characters");
        $('#AlertMsg .modal-body').html(
            'Please enter minimum 3 characters'
        );
        $('#AlertMsg').modal('show');
        return false;
    }
    return true;
}

function getMaxAllowedQuestions() {
    var maxQuestions = 0;

    if (window.buildExamFormData && window.buildExamFormData.NoofQuestions) {
        maxQuestions = parseInt(window.buildExamFormData.NoofQuestions) || 0;
    } else {
        var lim = readTextStorage(AAO_LIMIT_KEY);
        if (lim) maxQuestions = parseInt(lim) || 0;
    }
    return maxQuestions;
}

function updateSelectedCount() {
    var countElement = document.getElementById('selectedCount');
    var submitButton = document.getElementById('submitSelectedQuestions');
    var maxQuestions = getMaxAllowedQuestions();

    if (!countElement || !submitButton) return;

    if (selectedQuestionIds.length > 0) {
        var text = selectedQuestionIds.length + ' question(s) selected';
        if (maxQuestions > 0) text += ' (Max: ' + maxQuestions + ')';
        countElement.textContent = text;
        submitButton.disabled = false;
        submitButton.classList.remove('btn-secondary');
        submitButton.classList.add('btn-success');
    } else {
        countElement.textContent = maxQuestions > 0
            ? 'No questions selected (Max: ' + maxQuestions + ')'
            : 'No questions selected';
        submitButton.disabled = true;
        submitButton.classList.remove('btn-success');
        submitButton.classList.add('btn-secondary');
    }
}

function flipButtonsFor(qid, selected) {
    $('#addToQuestionList' + qid)[selected ? 'addClass' : 'removeClass']('hidden');
    $('#removeFromQuestionList' + qid)[selected ? 'removeClass' : 'addClass']('hidden');
    $('input[name="selectedQuestions"][value="' + qid + '"]').prop('checked', !!selected);
}

/* ------------ add/remove ------------ */
function addToQuestionList(questionId) {
    var qid = String(questionId);
    var maxQuestions = getMaxAllowedQuestions();

    // if the limit is explicitly set and empty/zero
    if (window.buildExamFormData &&
        (!window.buildExamFormData.NoofQuestions || String(window.buildExamFormData.NoofQuestions).trim() === '' || String(window.buildExamFormData.NoofQuestions).trim() === '0')) {
        //alert('Cannot add questions. Number of questions limit is not set. Please go back and set the number of questions for the exam.');

        $('#AlertMsg .modal-body').html(
            'Cannot add questions. Number of questions limit is not set. Please go back and set the number of questions for the exam.'
        );
        $('#AlertMsg').modal('show');
        
        return false;
    }

    // rehydrate in case another script reset the var
    selectedQuestionIds = loadSelectedIds();

    if (selectedQuestionIds.indexOf(qid) !== -1) {
        flipButtonsFor(qid, true);
        updateSelectedCount();
        return true;
    }

    /*if (maxQuestions > 0 && selectedQuestionIds.length >= maxQuestions) {
        alert('Cannot add more questions. Maximum allowed questions: ' + maxQuestions +
            '\nCurrently selected: ' + selectedQuestionIds.length +
            '\nPlease remove some questions before adding new ones.');
        return false;
    }*/

    if (maxQuestions > 0 && selectedQuestionIds.length >= maxQuestions) {
        // Set the message dynamically inside the modal body
        $('#AlertMsg .modal-body').html(
            'Cannot add more questions. Maximum allowed questions: ' + maxQuestions +
            '<br>Currently selected: ' + selectedQuestionIds.length +
            '<br>Please remove some questions before adding new ones.'
        );

        // Show the modal
        $('#AlertMsg').modal('show');
        return false;
    }

    selectedQuestionIds.push(qid);
    saveSelectedIds();
    flipButtonsFor(qid, true);
    updateSelectedCount();
    return true;
}

function removeFromQuestionList(questionId) {
    var qid = String(questionId);
    // rehydrate first
    selectedQuestionIds = loadSelectedIds();

    var idx = selectedQuestionIds.indexOf(qid);
    if (idx > -1) {
        selectedQuestionIds.splice(idx, 1);
        saveSelectedIds();
    }
    flipButtonsFor(qid, false);
    updateSelectedCount();
    return true;
}

/* ------------ initialization ------------ */
/*function initializeSearchPageWithBuildExamData() {
    var storedFormData = sessionStorage.getItem('buildExamFormData');
    if (storedFormData) {
        try {
            var formData = JSON.parse(storedFormData);
            window.buildExamFormData = formData;

            if (formData.NoofQuestions) writeTextStorage(AAO_LIMIT_KEY, String(formData.NoofQuestions));

            var submitBtn = $('#submitSelectedQuestions');
            if (submitBtn.length && formData.ExamName) {
                submitBtn.html('<i class="fa fa-plus"></i> Add Selected Questions to "' + formData.ExamName + '"');
            }
            sessionStorage.removeItem('buildExamFormData');
        } catch (error) {
            console.error('Error parsing stored form data:', error);
        }
    }
    updateSelectedCount();
}*/


function initializeSearchPageWithBuildExamData() {
    var storedFormData = sessionStorage.getItem('buildExamFormData');
    if (storedFormData) {
        try {
            var formData = JSON.parse(storedFormData);
            window.buildExamFormData = formData;
            if (formData.NoofQuestions) writeTextStorage(AAO_LIMIT_KEY, String(formData.NoofQuestions));
            var submitBtn = $('#submitSelectedQuestions');
            if (submitBtn.length && formData.ExamName) {
                submitBtn.html('<i class="fa fa-plus"></i> Add Selected Questions to "' + formData.ExamName + '"');
            }
            //Removed this line:
            // sessionStorage.removeItem('buildExamFormData');
        } catch (error) {
            console.error('Error parsing stored form data:', error);
        }
    }
    updateSelectedCount();
}



/* ------------ submit ------------ */
function submitSelectedQuestionsFormHidden() {
    // always rehydrate right before submit
    selectedQuestionIds = loadSelectedIds();

    if (!selectedQuestionIds.length) {
        //alert('Please select at least one question.');
        $('#AlertMsg .modal-body').html(
            'Please select at least one question.'
        );
        $('#AlertMsg').modal('show');
        return;
    }

    // Additional validation before submission
    var maxQuestions = getMaxAllowedQuestions();
    if (maxQuestions > 0 && selectedQuestionIds.length > maxQuestions) {
        //alert('Cannot submit. You have selected ' + selectedQuestionIds.length + ' questions but the maximum allowed is ' + maxQuestions + '. Please remove ' + (selectedQuestionIds.length - maxQuestions) + ' question(s).');

        $('#AlertMsg .modal-body').html(
            'Cannot submit. You have selected ' + selectedQuestionIds.length +
            ' questions but the maximum allowed is ' + maxQuestions +
            '. Please remove ' + (selectedQuestionIds.length - maxQuestions) + ' question(s).'
        );

        // Show the modal
        $('#AlertMsg').modal('show');

        return;
    }

    var formData = window.buildExamFormData || {};

    $('#hiddenSearchTerm').val(formData.SearchTerm || '');
    $('#hiddenSelectedQuestions').val(selectedQuestionIds.join(','));
    $('#hiddenNumberOfQuestions').val(selectedQuestionIds.length);
    $('#hiddenExamName').val(formData.ExamName || $('#ExamName').val());
    $('#hiddenExamType').val(formData.ExamType || $('#ExamType').val());
    $('#hiddenEmailId').val(formData.EmailId || $('#EmailId').val() || '');
    $('#hiddenShowDetailedAnswers').val(formData.ShowDetailedAnswers || $('#ShowDetailedAnswers').is(':checked'));
    $('#hiddenShowAnsAfterExamCompletion').val(formData.ShowAnsAfterExamCompletion || $('#ShowAnsAfterExamCompletion').is(':checked'));
    $('#hiddenDateRangeEnabled').val(formData.DateRangeEnabled || $('#DateRangeEnabled').is(':checked'));
    $('#hiddenStartDate').val(formData.StartDate || $('#StartDate').val() || '');
    $('#hiddenEndDate').val(formData.EndDate || $('#EndDate').val() || '');
    /*$('#hiddenExamMode').val(formData.ExamMode || $('#ExamMode').val() || '');*/
    $('#hiddenExamMode').val((formData.ExamMode === true || formData.ExamMode === 'true') ? 'true' : 'false');
    $('#hiddenExamAnswerToShow').val(formData.ExamAnswerToShow || $('#ExamAnswerToShow').is(':checked'));
    //$('#hiddenExamTimeType').val(formData.ExamTimeType || $('#ExamTimeType').val() || '');
    $('#hiddenExamTimeType').val((formData.ExamTimeType === true || formData.ExamTimeType === 'true') ? 'true' : 'false');
    $('#hiddenNumberOfCustomisedQuestions').val(formData.NumberOfCustomisedQuestions || $('#NumberOfCustomisedQuestions').val() || '');
    $('#hiddenNoofQuestions').val(formData.NoofQuestions || readTextStorage(AAO_LIMIT_KEY) || '');
    $('#hiddenTypeofCategoryList').val(formData.TypeofCategoryList ? formData.TypeofCategoryList.join(',') : '');
    $('#hiddenTypeofQuestionList').val(formData.TypeofQuestionList ? formData.TypeofQuestionList.join(',') : '');

    $('#hiddenSubmitForm').submit();
}

/* ------------ wire up ------------ */
$(document).ready(function () {
    initializeSearchPageWithBuildExamData();

    // Reapply saved selections to current result list
    selectedQuestionIds = loadSelectedIds();
    for (var i = 0; i < selectedQuestionIds.length; i++) {
        var qid = selectedQuestionIds[i];
        flipButtonsFor(qid, true);
    }
    updateSelectedCount();

    $(document).off('click', '.addToQuestionListBtn').on('click', '.addToQuestionListBtn', function (e) {
        e.preventDefault();
        e.stopPropagation();
        var questionId = $(this).data('question-id');
        if (addToQuestionList(questionId)) {
            $(this).addClass('hidden');
            $('#removeFromQuestionList' + questionId).removeClass('hidden');
        }
    });

    $(document).off('click', '.removeFromQuestionListBtn').on('click', '.removeFromQuestionListBtn', function (e) {
        e.preventDefault();
        e.stopPropagation();
        var questionId = $(this).data('question-id');
        removeFromQuestionList(questionId);
        $(this).addClass('hidden');
        $('#addToQuestionList' + questionId).removeClass('hidden');
    });
});

/*function SearchQuestionOnSearchPageBySharedExam() {

    let searchitem = $('#searchTerm_SharedExam').val();

    if (searchitem.trim() !== "") {

        // Collect form data from the current Build Exam form, passing the search term
        var formData = collectSharedExamFormData(searchitem.trim());
        console.log("formData: ", formData);

        var btnText = $('#submitSelectedQuestions').text().trim();
        var m = btnText.match(/"([^"]+)"|'([^']+)'/);
        var examName = m ? (m[1] || m[2]) : '';
        console.log(examName); // "Exam_shared_mode_290"

        // Validate that we have minimum required data
        //if (!formData.ExamName || formData.ExamName.trim() === "") {
        if (!examName || examName.trim() === "") {
            alert('Please enter an exam name before searching for questions.');
            return;
        }

        // Store form data in sessionStorage for retrieval on search page
        try {
            sessionStorage.setItem('buildExamFormData', JSON.stringify(formData));

            // Navigate to search page with search term and indication that this is from build exam
            var searchUrl = '/SearchByExam/SearchBySharedExam?SearchTerm=' + encodeURIComponent(searchitem.trim()) +
                '&Filter=All&fromBuildExam=true';

            window.location.href = searchUrl;

        } catch (error) {
            console.log("catch: ");
            console.error('Error storing form data:', error);
            // Fall back to the original POST method if sessionStorage fails
            searchAAOSharedExamOriginal();
        }
    }
    else {
        alert('Please enter a search term');
    }
}*/

//onclick="SearchQuestionOnSearchPageBySharedExam() Change - restoring old data
function SearchQuestionOnSearchPageBySharedExam() {
    let searchitem = $('#searchTerm_SharedExam').val();
    if (searchitem.trim() !== "") {
        // Use existing form data or empty object
        var formData = window.buildExamFormData || {};
        formData.SearchTerm = searchitem.trim();

        //Save updated form data back to sessionStorage
        sessionStorage.setItem('buildExamFormData', JSON.stringify(formData));

        // Redirect with query params
        var searchUrl = '/SearchByExam/SearchBySharedExam?SearchTerm=' + encodeURIComponent(searchitem.trim()) +
            '&Filter=All&fromBuildExam=true';
        window.location.href = searchUrl;
    } else {
        //alert('Please enter a search term');
        $('#AlertMsg .modal-body').html(
            'Please enter a search term'
        );

        // Show the modal
        $('#AlertMsg').modal('show');
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
        //alert('Please enter a search term');
        $('#AlertMsg .modal-body').html(
            'Please enter a search term'
        );

        // Show the modal
        $('#AlertMsg').modal('show');
    }
}