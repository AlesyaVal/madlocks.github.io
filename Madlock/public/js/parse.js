$(function(){
	$('.parse').click(function(){
var url = $('#purse_aliexpress').val();
var id = $(this).attr('data-id');
 $.ajax({
  type: 'Get',
  data: 'id='+id+'&url='+url,
  url: '/ajax/parse/catalog',
  beforeSend: function(){
   $('#empty').html('<img src="/public/media/img/loader.gif">');
  },
  success: function(data){
   $('#empty').html(data);    
  },
  error: function(msg){
   console.log(msg);
  }
 });
});
})