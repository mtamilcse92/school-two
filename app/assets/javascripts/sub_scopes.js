 $(document).on('turbolinks:load', function() {
 	console.log("click")
    $('select').material_select();
    $('.add-sub-scope').click(function() {
    	$('.sub-scope-form').removeClass("sub-scope-form");
    	});
  });
   