<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scaleable=no">
<title>Kimjihye</title>
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
//jQuery(function($){ //j쿼리 시작 : $(document).ready(function(){ }); == $(function(){ }); 과 동일
$(document).ready(function($){
    $(".menu-toggle-btn").click(function(){
        $(".gnb").stop().slideToggle("fast");
    });
});
</script>
<style>
/* 모바일용 CSS */
/* 기본 CSS */
.container{ /* 박스 크기*/
width:90%;
max-width:1132px;
margin:0 auto;  /* 0 상하여백 , auto 좌우여백*/
}
.cfixed:after, .container:after{ /* 전체 영역으로 1개 라인 모두 차지 */
display:block;
content:"";
clear:both;
}
.sec-tit{ /* 페이지 타이틀 */
font-size:42px;
color:cadetblue;
font-weight:normal;
}
/* 헤더 영역 CSS */
.header{
position:relative;
padding:18px 5%;
}
.header .logo{
float:left;
}
.header .logo a{
font-size:26px;
color:cadetblue;
font-weight:normal;
}
.header .gnb{
display:none;
position:absolute;
top:100%;
left:0;
width:100%;
background:cadetblue;
}
.header .gnb li{
border-bottom:1px solid rgb(69, 133, 103);
}
.header .gnb li a{
display:block;
padding:14px 0 14px 5%;
font-size:14px;
color:#fff;
}
.header .menu-toggle-btn{
float:right;
width:20px;
margin-top:4px;
cursor:pointer;
}
.header .menu-toggle-btn span{
display:block;
width:100%;
height:2px;
background:#3f51b5;
}
.header .menu-toggle-btn span:nth-child(2){
margin:5px 0;
}
/* HOME 슬라이더 영역 CSS */
.slider img{
display:block;
width:100%;
max-width:100%;
height:auto;
}

/* WE ARE 영역 CSS */
.display-section{
margin-top:59px;
text-align:center;
}
.display-section .sec-tit{
margin-bottom:30px;
}
.display-section .desc{
font-family:'PT Serif';
color:#616161;
line-height:1.9;
}
/* WE ARE 내용 영역 CSS */
.promotion-section{
margin-top:68px;
}
.promotion-section .promo-list li{
margin-top:52px;
text-align:center;
}
.promotion-section .promo-list li:first-child{
margin-top:0;
}
.promotion-section .promo-list li img{
height:52px;
}
.promotion-section .promo-list li h3{
margin:29px 0 20px 0;
color:#3f51b5;
font-weight:normal;
}
.promotion-section .promo-list li p{
font-size:14px;
font-family:'PT Serif';
color:#616161;
line-height:1.5;
}

</style>
</head>
<body>
	<div id="wrap">
		<header class="header cfixed">
			<h1 class="logo">
				<a href="">LOGO</a>
			</h1>
			<nav>
				<ul class="gnb">
					<li><a href="/htmltest">htmltest</a></li>
					<li><a href="">WE ARE</a></li>
					<li><a href="">WORK</a></li>
					<li><a href="">BLOG</a></li>
					<li><a href="">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
		</header>
		<article class="slider">
			<img src="/resources/IMG/1 (2).jpg" alt="">
		</article>
		<footer class="footer">
			<p class="copyright">LOGO</p>
		</footer>
	</div>
</body>
</html>