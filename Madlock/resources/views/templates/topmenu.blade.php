

 <div id="wrapper">
 <div class="overlay"></div>


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


 <div id="page-content-wrapper">
 <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
 <span class="hamb-top"></span>
 <span class="hamb-middle"></span>
 <span class="hamb-bottom"></span>
 </button>
 </div>

 </div>

 
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