<!DOCTYPE html>
<html lang="ru">
 <head>

   <meta charset="utf-8">
   <meta name="description" content="1, 2, 3 предложения">
   <meta name="keywords" content="выражения через ,">
   <meta name="author" content="">
   <title> название сайта </title>
   <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
       <!-- <link  type="text/css" rel="stylesheet" href="{{asset('/public/media/css/style1.css')}}"/> -->
   <link  type="text/css" rel="stylesheet" href="{{asset('/public/media/css/style1.css')}}"/>


   <link  type="text/css" rel="stylesheet" href="{{asset('madlocks/public/media/bootstrap/css/bootstrap.min.css')}}"/>




   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
 

 <div id="wrapper">
 <div class="overlay"></div>
 
 <!-- Sidebar -->
 <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
 <ul class="nav sidebar-nav">
 <li class="sidebar-brand">
 <a href="{{asset('/')}}"> Madlocks </a>
 </li>
 <li>
 <a href="{{asset('/')}}">Главная</a>
 </li>
 <li>
 <a href="{{asset('HAirMaster')}}">Наши мастера</a>
 </li>
 <li class="dropdown">
 <a href="{{asset('categories')}}" class="dropdown-toggle" data-toggle="dropdown">Услуги<span class="caret"></span></a>
 <ul class="dropdown-menu" role="menu">
  @foreach ($v_catalogs as $one)
        <a href="{{asset('catalog/'.$one->id)}}" >{{$one->name}}</a>
      @endforeach  
 </ul>
 </li>
 <li>
 <a href="{{asset('map')}}">Карта проезда</a>
 </li>
 <li>
 <a href="{{asset('feedback')}}" >Отзывы</a> 
 </li>
<!--  <li>
 <a href="{{asset('contacts')}}">Контакты</a>
 </li> -->
 </ul>
 </nav>
 <!-- /#sidebar-wrapper -->

 <!-- Page Content -->
 <div id="page-content-wrapper">
 <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
 <span class="hamb-top"></span>
 <span class="hamb-middle"></span>
 <span class="hamb-bottom"></span>
 </button>
 </div>
 <!-- /#page-content-wrapper -->

 </div>
 <!-- /#wrapper -->

<script>
$(document).ready(function () {
 var trigger = $('.hamburger'),
 overlay = $('.overlay'),
 isClosed = false;

 trigger.click(function () {
 hamburger_cross(); 
 });

 function hamburger_cross() {

 if (isClosed == true) { 
 overlay.hide();
 trigger.removeClass('is-open');
 trigger.addClass('is-closed');
 isClosed = false;
 } else { 
 overlay.show();
 trigger.removeClass('is-closed');
 trigger.addClass('is-open');
 isClosed = true;
 }
 }
 
 $('[data-toggle="offcanvas"]').click(function () {
 $('#wrapper').toggleClass('toggled');
 }); 
});
</script>




  @section ('styles')
  @show
 
  @section ('scripts')
  <script src="{{ asset('public/js/app.js?time='.time()) }}"></script>
  @show
   </head>
<body>
    <header id="header" >
       <h1 id="logotext" > MadLocks </h1> 
      
    </header>



 <div id="video-bg">
    <video width="100%" height="auto" preload="auto" autoplay="autoplay" autoplay loop muted="0"
    loop="loop" poster="bg/daisy-stock-poster.jpg">
        <source src="{{asset('public/Video.mp4')}}" type="video/mp4"></source>
        
    </video>
</div>
  </body>

<!-- <img id="logo" src="{{asset('/public/media/img/Logotext.png')}}" style="width:100%; height: 120%;" />    -->
     
    



<!-- <footer class="footer">
  2018 &copy; AlesyaValko
</footer> -->
      
  <!--  <footer class="footer" >

<div class="textwidget"> <h6>Свяжитель с нами</h6>
            
<p><a href="{{asset('map')}}"> г. Минск,ул. Короля, 17</a><br>
Life: <a href="tel:+375173551213">+ 375 (25) 642-25-11</a><img class="alignnone size-medium wp-image-5493" src="//hairguys.by/wp-content/uploads/2018/03/viber-300x300.png" alt="viber" width="16" height="16"><br>
Vel.: <a href="tel:+375296881213">+ 375 (29) 643-21-83</a> <br>
<a href="https://vk.com/creative_studio_jh" target="_blank" rel="noopener">
<img class="alignnone wp-image-2171" src="https://mamcupy.com/upload/medialibrary/6ea/6eaa85d0cde97edb9aa96b666c5839cb.png" alt="w512h5121384975213MezhdunarodnylogotipVK" width="32" height="32"></a>
<a href="https://www.instagram.com/creative_studio_jh/" target="_blank" rel="noopener">
<img class="alignnone wp-image-2172 size-full" src="http://sequoiamebel.ru/sequoia/img/instagram.png" width="32" height="32"></a>
<br><br>2019  &copy;  MadLock
</p>
</div>

    

   
  </footer> -->

<!--   <div class="video">
    <video autoplay loop muted="0">
   <source src="{{asset('public/Video.mp4')}}" type="video/mp4">
        <video src="{{asset('public/Video.mp4')}}" autoplay loop muted="0" width=100% height=100% ></video>
</video>

    </div> -->
    
 


 </html>