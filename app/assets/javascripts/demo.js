$(document).ready(function(){
	function deleteItem(){
		$(".demo-trash").on("click", function(){
			alert("Are you sure?");
			$(this).closest('tr').remove();
		})
	}

	deleteItem();
});

