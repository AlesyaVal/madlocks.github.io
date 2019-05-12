<!DOCTYPE html>
<html lang="ru">
 <head>
   <meta charset="utf-8">
   <meta name="description" content="1, 2, 3 предложения">
   <meta name="keywords" content="выражения через ,">
   <meta name="author" content="">
   <title> название сайта </title>
	 <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
   
   <link  type="text/css" rel="stylesheet" href="{{asset('/public/media/css/style.css')}}"/>
   <link  type="text/css" rel="stylesheet" href="{{asset('/public/media/bootstrap/css/bootstrap.min.css')}}"/>

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
<!--  <li>
 <a href="{{asset('basket')}}" >Мне понравилось ({{$cookie_count}})</a>
 </li> -->
 
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
 <!-- <li>
 <a href="{{asset('feedback')}}" >Отзывы</a> 
 </li>
 <li>
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
   		<header id="header">
   		 <h1 id="logotext"> MadLocks </h1>	
   	<!-- 	 <img id="logo" src="{{asset('/public/media/img/logo.png')}}"/> -->
   		
		
		</header>
		
		   
   		
   		
		<!-- <nav class="topmenu">

		<a href="{{asset('/')}}">Главная</a>
   	 	<a href="{{asset('HAirMaster')}}">Наши мастера</a>
		<a class="btn btn-secondary dropdown-toggle " href="{{asset('categories')}}" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" 
		a href="{{asset('services')}}">
				Услуги</a>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					@foreach ($v_catalogs as $one)
				<a href="{{asset('catalog/'.$one->id)}}" class="btn btn-default btn-block">{{$one->name}}</a>
			@endforeach 
			</div>
			
		<a href="{{asset('map')}}" >Карта проезда</a>
   	 	<a href="{{asset('contacts')}}" >Контакты</a>
   	 	<a href="{{asset('feedback')}}" >Отзывы</a>
	   	</nav> -->
   		


   		<main class="row">
   		  <aside class="col-md-2">
	<!-- 		<a href="{{asset('photo')}}" class="btn btn-secondary btn-block">Галерея</a> 
			<a href="{{asset('price')}}" class="btn btn-secondary btn-block">Прайс-лист</a> -->
			
		  </aside>
		 
			<article class="col-md-8 mainblock"> 
			@yield('content')
			</article>

         
			<aside class="col-md-2"> 
       <aside id="dev_widget_preview" class="dev_widget_preview" style="width: 300px; height: 280px; background: none;">
    <iframe name="fXDc71ab" frameborder="0" 
    src=  https://vk.com/widget_community.php?app=1936057&amp;width=200px&amp;_ver=1&amp;gid=34188066&amp;mode=3&amp;color1=&amp;color2=&amp;color3=&amp;class_name=&amp;url=https%3A%2F%2Fvk.com%2Fdev%2FCommunity%3Fheight%3D400%26link%3Dhttps%253A%252F%252Fvk.com%252Fcreative_studio_jh%26mode%3D3%26no_cover%3D%26oid%3D-34188066%26wide%3D&amp;referrer=https%3A%2F%2Fwww.kasper.by%2F&amp;title=%D0%92%D0%B8%D0%B4%D0%B6%D0%B5%D1%82%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D1%81%D1%82%D0%B2%20%7C%20%D0%A0%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%B0%D0%BC&amp;166a2723370
    width="200" height="185" scrolling="no" id="vkwidget16" style="overflow: hidden; height: 190px;">
    </iframe>
    </aside>
    <!--    @guest
         <a class="btn btn-default btn-block" href="{{ route('login') }}" >{{ __('Login') }}</a>
             @if (Route::has('register'))
      <a class="btn btn-default btn-block" href="{{ route('register') }}">{{ __('Register') }}</a>
                @endif
                     @else
                     <a class="btn btn-default btn-block" href="{{asset('home')}}" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                    {{ Auth::user()->name }} <span class="caret"></span>
                     </a>
            <div >
                         <a class="dropdown-item" href="{{ route('logout') }}"
                          onclick="event.preventDefault();
                          document.getElementById('logout-form').submit();">
                         {{ __('Logout') }}
                     </a>
    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                              @csrf
          </form>
                        </div>
                            @endguest -->


		<!-- 	<aside id="dev_widget_preview" class="dev_widget_preview" style="width: 300px; height: 280px; background: none;">
			<iframe name="fXDc71ab" frameborder="0" 
			src=  https://vk.com/widget_community.php?app=1936057&amp;width=200px&amp;_ver=1&amp;gid=34188066&amp;mode=3&amp;color1=&amp;color2=&amp;color3=&amp;class_name=&amp;url=https%3A%2F%2Fvk.com%2Fdev%2FCommunity%3Fheight%3D400%26link%3Dhttps%253A%252F%252Fvk.com%252Fcreative_studio_jh%26mode%3D3%26no_cover%3D%26oid%3D-34188066%26wide%3D&amp;referrer=https%3A%2F%2Fwww.kasper.by%2F&amp;title=%D0%92%D0%B8%D0%B4%D0%B6%D0%B5%D1%82%20%D0%B4%D0%BB%D1%8F%20%D1%81%D0%BE%D0%BE%D0%B1%D1%89%D0%B5%D1%81%D1%82%D0%B2%20%7C%20%D0%A0%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA%D0%B0%D0%BC&amp;166a2723370
			width="200" height="185" scrolling="no" id="vkwidget16" style="overflow: hidden; height: 190px;">
			</iframe>
			</aside> -->
			</aside>
		</main>
		
   		<!-- <br style="clear:both" />
		
   		<footer class="footer">
   			2018 &copy; AlesyaValko
   		</footer> -->
   	  
   	</body>
	 
    <footer class="footer" >

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
<!-- 
    
  </footer>
<!-- 	<video autoplay loop muted="0">
   <source src="{{asset('public/Video.mp4')}}" type="video/mp4">
</video> -->

 </html>