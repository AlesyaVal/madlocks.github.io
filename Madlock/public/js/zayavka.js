$(function(){
	$('.count'). on('input', function(){
		var data=$(this).val();
		var id=$(this).attr('data-id');
		var price=$('#price_'+id).text();
		console.log(data, id, price);
					$('#count_'+id).text(price*data); 
		
	});





});