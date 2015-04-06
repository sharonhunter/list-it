$(document).ready(function(){

	function crossOutItem(){
		$('table').on('click', 'tr td.icon-cell-remove', function(event){
			$(this).children('a').removeClass("glyphicon-remove").addClass("glyphicon-ok");
			$(this).filter('.icon-cell-remove').next().addClass("cross-out");
		})
	}

	function deleteItem(){
		$('table').on('click', 'tr td.icon-cell-trash', function(event){
			//alert("Are you sure?");
			$(this).closest('tr').remove();
		})
	}

	function addListItem(){
		//var userInput = $('#demo-list-item').val();
		$('#demo-submit-btn').on('click', function(event){
			$('#demo-list').prepend("<tr> + <td class='icon-cell-remove'><a class='glyphicon glyphicon-remove'</a></td>" + 
				"<td class='item-cell text-left'>" + $('#demo-list-item').val() + "</td>" + "<td class='icon-cell-trash'><a class='glyphicon glyphicon-trash'</a></td></tr>");
			$('#demo-list-item').val('');
		})
	}

	crossOutItem();
	deleteItem();
	addListItem();

});

