$(document).ready(function(){
	function fadeMessage(){
		$("#notice-wrapper").fadeOut('slow', function(){
			$(this).remove();
		});
	}
	setTimeout(fadeMessage, 2000);
});