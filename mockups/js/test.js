var nFootnotes = 2;

function setUpListeners() {
  var i;
  for (i = 0; i < nFootnotes; i++) {
    var footnoteClick = footnoteClickFactory(i);
    $("#footnote_link" + i).on("click", footnoteClick);
  }
}

function footnoteClickFactory(footnote_index) {
  return function(eventObject) {
    eventObject.preventDefault();
    hideAllFootnotes();
    showFootnote(footnote_index);
  };
}

function hideAllFootnotes() {
  for (i = 0; i < nFootnotes; i++) {
    $("#footnote_text" + i).fadeOut();
  }
}

function showFootnote(footnote_index) {
  $("#footnote_text" + footnote_index).fadeIn(1000);
}

setUpListeners();
