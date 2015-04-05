$(document).ready(function(){
	function deleteItem(){
		$("td.icon-cell-trash").on("click", function(){
			alert("Are you sure?");
			$(this).closest('tr').remove();
		})
	}

	function crossOutItem(){
		$("td.icon-cell-remove").on("click", function(){
			$(this).children('a').removeClass("glyphicon-remove").addClass("glyphicon-ok");
			$(this).filter(".icon-cell-remove").next().addClass("cross-out");
		})
	}

	deleteItem();
	crossOutItem();
});

