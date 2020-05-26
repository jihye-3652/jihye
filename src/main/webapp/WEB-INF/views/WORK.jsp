<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scaleable=no">
<title>Kimjihye</title>
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/common.js"></script>
<script>
				
</script>
<style>

/* WORK 영역 CSS */
.work-section{
margin-top:73px;
}
.work-section .sec-tit{
width:90%;
max-width:1132px;
margin:0 auto;
margin-bottom:47px;
text-align:center;
}
.work-section .work-list li{
width:100%;
}
.work-section .work-list li a{
display:block;
position:relative;
width:100%;
height:100%;
}
.work-section .work-list li a:before{
display:block;
position:absolute;
top:0;
left:0;
z-index:10;
width:100%;
height:100%;
background:#3f51b5;
content:"";
opacity:0;
transition:all 0.2s;
}
.work-section .work-list li a:hover:before{
opacity:0.86;
}
.work-section .work-list li .info{
position:absolute;
top:0;
left:23px;
z-index:20;
opacity:0;
transition:all 0.3s;
}
.work-section .work-list li a:hover .info{
transform:translateY(23px);
opacity:1;
}
.work-section .work-list li .info h3{
margin-bottom:8px;
font-size:23px;
color:#fff;
font-weight:normal;
}
.work-section .work-list li .info span{
font-size:11px;
color:#fff;
}
.work-section .work-list li img{
display:block;
width:100%;
max-width:100%;
height:auto;
}
 </style> 
<body>
<div id="wrap">
		<header class="header cfixed">
			<h1 class="logo">
				<a href="">LOGO</a>
			</h1>
			<nav>
				<ul class="gnb">
					<li><a href="/">HOME</a></li>
					<li><a href="/WEARE">WE ARE</a></li>
					<li><a href="/WORK">WORK</a></li>
					<li><a href="/BLOG">BLOG</a></li>
					<li><a href="/CONTACTUS">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
	</header>
        
         <article class="slider">
            <img src="resources/images/aa.jpg" alt="LOGO">
        </article>
        
	<section class="content">
        <hr class="divider">
        
	<section class="work-section cfixed">
		<h2 class="sec-tit">WORK</h2>
		<ul class="work-list">
			<li>
				<a href>
				 <div class="info">
				 	<h3>작업1</h3>
				 	<span>소스/작업1</span>
				 </div>
				 <img alt="" src="/resources/images/cc.jpg">
				</a>
			</li>
			<li>
				<a href>
				 <div class="info">
				 	<h3>작업2</h3>
				 	<span>소스/작업2</span>
				 </div>
				 <img alt="" src="/resources/images/bb.jpg">
				</a>
			</li>			<li>
				<a href>
				 <div class="info">
				 	<h3>작업3</h3>
				 	<span>소스/작업3</span>
				 </div>
				 <img alt="" src="/resources/images/bb.jpg">
				</a>
			</li>			<li>
				<a href>
				 <div class="info">
				 	<h3>작업4</h3>
				 	<span>소스/작업4</span>
				 </div>
				 <img alt="" src="/resources/images/bb.jpg">
				</a>
			</li>			<li>
				<a href>
				 <div class="info">
				 	<h3>작업5</h3>
				 	<span>소스/작업5</span>
				 </div>
				 <img alt="" src="/resources/images/bb.jpg">
				</a>
			</li>			<li>
				<a href>
				 <div class="info">
				 	<h3>작업6</h3>
				 	<span>소스/작업6</span>
				 </div>
				 <img alt="" src="/resources/images/bb.jpg">
				</a>
			</li>			<li>
				<a href>
				 <div class="info">
				 	<h3>작업7</h3>
				 	<span>소스/작업7</span>
				 </div>
				 <img alt="" src="/resources/images/bb.jpg">
				</a>
			</li>		
		
		
		</ul> 
	</section>
	<hr class="divider">
</section>
</div>				
</body>
</html>