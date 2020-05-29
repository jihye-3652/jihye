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
<link rel="stylesheet" type="text/css" href=/resources/css/reset.css>
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<style>
/* HOME 슬라이더 영역 CSS */
.slider img {
	display: block;
	width: 100%;
	max-width: 100%;
	height: auto;
}
/* WE ARE 영역 CSS */
.display-section{
margin-top:30px;
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
margin-top:50px;
}
.promotion-section .promo-list li{
margin-top:52px;
text-align:center;
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
height:300px;
}
 /* BLOG 영역 CSS */
.blog-section{
margin-top:77px;
}
.blog-section .sec-tit{
margin-bottom:47px;
text-align:center;
}
.blog-section .blog-list li{
width:100%;
margin-top:45px;
}
.blog-section .blog-list li:first-child{
margin-top:0;
}
.blog-section .blog-list li img{
display:block;
width:100%;
max-width:100%;
height:auto;
}
.blog-section .blog-list li time{
display:block;
margin:11px 0 10px 0;
font-size:11px;
color:#9e9e9e;
}
.blog-section .blog-list li h3{
color:#424242;
font-weight:normal;
line-height:1.6;
}
 /* CONTACT US 영역 CSS */
.contact-section{
margin-top:109px;
}
.contact-section .sec-tit{
margin-bottom:47px;
text-align:center;
}
.contact-section .form-box .form input{
    width: 100%;
    background: transparent;
    line-height: 1.2;
    padding: 0 2px;
    height: 50px;
    outline: none;
    border: none;
    border-bottom: 2px solid #dbdbdb;
}
.blind{ /* 라벨 태그 숨기기 */
position:absolute;
width:0;
height:0;
line-height:0;
text-indent:-9999px;
overflow:hidden;
}
.contact-section .form-box .textarea textarea{
    width: 100%;
    background: transparent;
    line-height: 1.2;
    outline: none;
    border: none;
    border-bottom: 2px solid #dbdbdb;
    min-height: 150px;
    padding-top: 13px;
    padding-bottom: 13px;
}
.contact-section .form-box .send-btn{
	margin-top:36px;
	text-align:right;
}
.contact-section .form-box .send-btn button{
	padding:15px;
	margin:0;
	border:0;
	font-size:12px;
	color:#fff;
	background:cadetblue;
	font-family:'Montserrat';
	cursor:pointer;
}

/* 태블릿 WE ARE 영역 CSS */
@media all and (min-width:768px){
  .display-section{
  margin-top:95px;
  }
 /* 태블릿 WE ARE 내용 영역 CSS */
 .promotion-section{
  margin-top:110px;
  }
 .promotion-section .promo-list li{
  float:left;
  width:23.046875%;
  /* 177px ÷ 768px*/
  margin-left:2.604166666666667%;
  /* 20px ÷ 768px*/
  margin-top:0;
  }
  /* [가변그리드공식] = 결과는 % 단위 입니다.
  [가변element값 %] = (가변크기로 만들 박스의 가로 너비 / 가변그키로 만들 박스를 감싸고 있는 박스의 가로 너비) X 100 
  [가변마진값 %] = (가변 마진을 적용할 마진값 / 적용할 박스를 감싸고 있는 박스의 가로 너비) X 100
  [가변패딩값 %] = (가변 패딩을 적용할 패딩값 / 적용할 박스를 감싸고 있는 박스의 가로 너비) X 100
  */
  .promotion-section .promo-list li:first-child{
  margin-left:0;
  }
/* 태블릿 WORK 영역 CSS */
  .work-section{
  margin-top:118px;
  }
  .work-section .sec-tit{
  margin-bottom:76px;
  }
  .work-section .work-list li{
  float:left;
  width:50%;
  }
  .work-section .work-list li .info{
  left:37px;
  }
  .work-section .work-list li a:hover .info{
  transform:translateY(37px);
  }
 /* 태블릿 BLOG 영역 CSS */
  .blog-section{
  margin-top:124px;
  }
  .blog-section .sec-tit{
  margin-bottom:76px;
  }
  .blog-section .blog-list li{
  float:left;
  width:31.59722222222222%;
  /* 242.6666666666667px ÷ 768px*/
  margin-left:2.604166666666667%;
  /* 20px ÷ 768px*/
  margin-top:0;
  }
  .blog-section .blog-list li:first-child{
  margin-left:0;
  }
/* 태블릿 CONTACT US 영역 CSS */
  .contact-section{
  margin-top:176px;
  }
  .contact-section .sec-tit{
  margin-bottom:76px;
  }
  .contact-section .form-box .form, .contact-section .form-box .textarea{
  float:left;
  width:48.69791666666667%;
  /* 374px ÷ 768px*/
  }
  .contact-section .form-box .form{
  margin-right:2.604166666666667%;
  /* 20px ÷ 768px*/
  }
  .contact-section .form-box .form input:last-child{
  margin-bottom:0;
  }
  }
  
 /* PC WE ARE 영역 CSS */
 @media all and (min-width:1132px){
  .display-section{
  text-align:left;
  }
  .display-section .sec-tit{
  float:left;
  margin-bottom:0;
  }
  .display-section .desc{
  position:relative;
  float:right;
  padding-left:20px;
  font-family:'PT Serif';
  color:#616161; 
  line-height:1.9;
  }
  .display-section .desc:before{
  display:block;
  position:absolute;
  top:9px;
  left:0;
  width:2px;
  height:44px;
  background:#e0e0e0;
  content:"";
  }
  }
  /* PC WE ARE 내용 영역 CSS */
  @media all and (min-width:1132px){
  .promotion-section .promo-list li{
  width:23.67491166077739%;
  /* 268px ÷ 1132px*/
  margin-left:1.76678445229682%;
  /* 20px ÷ 1132px*/
  }
   /* PC WORK 영역 CSS */
  .work-section .sec-tit{
  text-align:left;
  }
  .work-section .work-list li{
  width:25%;
  }
/* PC BLOG 영역 CSS */
  .blog-section .sec-tit{
  float:left;
  margin-bottom:0;
  }
  .blog-section .blog-list{
  float:right;
  width:74.5583038869258%;
  /* 844px ÷ 1132px*/
  }
  .blog-section .blog-list li{
  width:31.75355450236967%;
  /* 268px ÷ 844px*/
  margin-left:2.369668246445498%;
  /* 20px ÷ 844px*/
  }
  /* PC CONTACT US 영역 CSS */
  .contact-section .sec-tit{
  float:left;
  margin-bottom:0;
  }
  .contact-section .form-box{
  float:right;
  width:74.5583038869258%;
  /* 844px ÷ 1132px*/
  }
  .contact-section .form-box .form, .contact-section .form-box .textarea{
  width:48.81516587677725%;
  /* 412px ÷ 844px*/
  }
  .contact-section .form-box .form{
  margin-right:2.369668246445498%;
  /* 20px ÷ 844px*/
  }
}
</style>
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/common.js"></script>
<script>
				
</script>
</head>
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
			<img src="/resources/images/aa.jpg" alt="로고">
		</article>
		<section class="content">
		<section class="display-section">
		<div class="container">
		<h2 class="sec-tit">WE ARE</h2>
		<p class="desc">
			"Jihye doesn't want to study anymore."
			<br>
			"Just wanna take some rest and eat something nice food." 
			</p>
			</div>
		</section>
		<section class="promotion-section">
			<div class="container">
			<ul class="promo-list">
				<li>
				<a href>
					<img src="/resources/images/a.jpg" alt="">
					<h3>HOME</h3>
					<p>Unknown file added by Jihye.</p>
				</a>
				</li>
				<li>
				<a href>
					<img src="/resources/images/a.jpg" alt="">
					<h3>WE ARE</h3>
					<p>Unknown file added by Jihye.</p>
				</a>
				</li>
				<li>
				<a href>
					<img src="/resources/images/a.jpg" alt="">
					<h3>WORK</h3>
					<p>Unknown file added by Jihye.</p>
				</a>
				</li>
				<li>
				<a href>
					<img src="/resources/images/a.jpg" alt="">
					<h3>BLOG</h3>
					<p>Unknown file added by Jihye.</p>
				</a>
				</li>
			</ul>
			</div>
		</section>
		</section>
		<section class="content">
		<hr class="divider">
		
		 <section class="content">
        <hr class="divider">
        <section class="work-section cfixed">
        <h2 class="sec-tit">WORK</h2>
        <ul class="work-list">
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work1</h3>
                    <span>Sources/work1</span>
                 </div>
                 <img src="/resources/images/bb.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work2</h3>
                    <span>Sources/work2</span>
                 </div>
                 <img src="/resources/images/eee.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work3</h3>
                    <span>Sources/work3</span>
                 </div>
                 <img src="/resources/images/KI.jpg" alt="">
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work4</h3>
                    <span>Sources/work4</span>
                 </div>
                 <img src="/resources/images/cc.jpg" alt="" >
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work5</h3>
                    <span>Sources/work5</span>
                 </div>
                 <img src="/resources/images/hh.jpg" alt="" >
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work6</h3>
                    <span>Sources/work6</span>
                 </div>
                 <img src="/resources/images/ee.jpg" alt="" >
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work7</h3>
                    <span>Sources/work7</span>
                 </div>
                 <img src="/resources/images/ff.jpg" alt="" >
                </a>
            </li>
            <li>
                <a href="#" onclick="return false">
                 <div class="info">
                    <h3>Work8</h3>
                    <span>Sources/work8</span>
                 </div>
                 <img src="/resources/images/kk.jpg" alt="">
                </a>
            </li>
        </ul>
        </section>
       <hr class="divider">
	<section class="blog-section">
		<div class="container">
			<h2 class="sec-tit">BLOG</h2>
			<ul class="blog-list">
				<li>
					<a href="#" onclick="return false">
						<img src="/resources/images/bb.jpg" art="">
					</a>
					<time datetime="2020-05-26">MAY 26, 2020</time>
					<a href>
						<h3>Jihye wants to watch a movie.</h3>
					</a>
				</li>
				<li>
					<a href="#" onclick="return false">
						<img src="/resources/images/cc.jpg" art="">
					</a>
					<time datetime="2020-05-26">MAY 26, 2020</time>
					<a href>
						<h3>Jihye wants to drink some coffee.</h3>
					</a>
				</li>
				<li>
					<a href="#" onclick="return false">
						<img src="/resources/images/kk.jpg" art="">
					</a>
					<time datetime="2020-05-26">MAY 26, 2020</time>
					<a href>
						<h3>Jihye wants to eat a muffin.</h3>
					</a>
				</li>
			</ul>
		</div>
	</section>
    <section class="content">
		<section class="contact-section">
			<div class="container">
				<h2 class="sec-tit">CONTACT US</h2>
				<div class="form-box">
					<form action="" method="">
						<fieldset class="cfixed">
							<legend class="blind"> CONTACT US</legend>
							<div class="form">
								<label for="name" class="blind">NAME</label>
								<input type="text" id="name" placeholder="NAME">
								<label for="phone" class="blind">PHONE</label>
								<input type="tel" id="phone" placeholder="PHONE"> 
								<label for="email" class="blind">EMAIL</label>
								<input type="email" id="email" placeholder="EMAIL ADDRESS">
							</div>
							<div class="textarea">
								<label for="message" class="blind">MESSAGE</label>
								<textarea name="message" id="message" placeholder="MESSAGE"></textarea>
							</div>
						</fieldset>
						<div class="send-btn">
							<button>Submit</button>
						</div>
					</form>
				</div>	
			</div>
		 </section>
		</section>
    </section>
    </section>
    <footer class="footer">
		 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3193.1908531424174!2d127.18028131558675!3d36.
		 83790497994078!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b293c64087a5b%3A0x1873dee0e6399a00!2z67Cx7ISd66y47ZmU64yA7ZWZ6rWQ!
		 5e0!3m2!1sko!2skr!4v1513569521608"
		 width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</footer>
    <hr class="divider">
		<footer class="footer">
			<p class="copyright">LOGO</p>
		</footer>
	</div>

</body>
</html>