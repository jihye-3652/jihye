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
								<label for="message" class="blind">message</label>
								<textarea name="message" id="message" placeholder="message"></textarea>
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
		<footer class="footer">
		 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3193.1908531424174!2d127.18028131558675!3d36.83790497994078!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b293c64087a5b%3A0x1873dee0e6399a00!2z67Cx7ISd66y47ZmU64yA7ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1513569521608"
		 width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		<p class="copyright">LOGO</p>
		</footer>
	</div>
  </body>
</html>