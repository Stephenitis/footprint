$(document).ready(function(){
	
	$('body').delegate('.user_profile', 'click', function(e) {
		e.preventDefault();
		var id = $(this).data('id')
		var url = $(this).attr('href')
		getUserProfile(id, url);
	});

	$(".btn").click(function() {
		$('#myModal').hide();
		console.log("hello");
	})

	function getUserProfile(id, url) {
		$('#myModal').show();
		$.ajax({ 
			type:"GET",
			url:url
		}).done(function(html) {
			$('#myModal .modal-body').html(html);
		});
	}


});