$(document).ready(function(){
	$('.add-subject').click(function() {
  $('#subject-display').removeClass("subject-display");
  $('.collapsible').collapsible();
});

$('.edit-subject').click(function() {
  // $(".name-field").attr("readonly", false);
  console.log($(this).parent().parent().find('.name-field'))
   $(this).parent().parent().find('.name-field').attr("readonly", false);
});

$('.add-topics-button').click(function() {
	console.log($(this).children().children().children().find('#add-topic'));
   $(this).children().find('#add-topic').removeClass("add-topic");
});
});