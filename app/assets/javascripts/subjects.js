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
});