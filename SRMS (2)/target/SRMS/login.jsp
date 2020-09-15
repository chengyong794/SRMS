<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>科研成果管理系统</title>
<!-- 公共样式 开始 -->
      <!-- Favicon -->
      <link rel="shortcut icon" href="images/favicon.ico" />
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- Typography CSS -->
      <link rel="stylesheet" href="css/typography.css">
      <!-- Style CSS -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive CSS -->
      <link rel="stylesheet" href="css/responsive.css">
<!-- Optional JavaScript -->
      <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- Appear JavaScript -->
      <script src="js/jquery.appear.js"></script>
      <!-- Countdown JavaScript -->
      <script src="js/countdown.min.js"></script>
      <!-- Counterup JavaScript -->
      <script src="js/waypoints.min.js"></script>
      <script src="js/jquery.counterup.min.js"></script>
      <!-- Wow JavaScript -->
      <script src="js/wow.min.js"></script>
      <!-- Apexcharts JavaScript -->
      <script src="js/apexcharts.js"></script>
      <!-- Slick JavaScript -->
      <script src="js/slick.min.js"></script>
      <!-- Select2 JavaScript -->
      <script src="js/select2.min.js"></script>
      <!-- Owl Carousel JavaScript -->
      <script src="js/owl.carousel.min.js"></script>
      <!-- Magnific Popup JavaScript -->
      <script src="js/jquery.magnific-popup.min.js"></script>
      <!-- Smooth Scrollbar JavaScript -->
      <script src="js/smooth-scrollbar.js"></script>
      <!-- lottie JavaScript -->
      <script src="js/lottie.js"></script>
      <!-- Chart Custom JavaScript -->
      <script src="js/chart-custom.js"></script>
      <!-- Custom JavaScript -->
      <script src="js/custom.js"></script>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript" src="layui/layui.all.js"></script>
<style>
        #box1, #box2, #box3, #box4, #box5, #box6, #box7 {
            margin-top:1.5%;
        }
        input {
            border-left:none;
        }
    </style>
</head>
<body>
	<!--主体 开始-->
	<div class="login_main">
		<!--轮播图 开始-->
		<div class="layui-carousel lbt" id="loginLbt">
			<div carousel-item>
				<div class="item"
					style="background: url(images/login_bg1.jpg) no-repeat; background-size: cover;"></div>
				<div class="item"
					style="background: url(images/login_bg2.jpg) no-repeat; background-size: cover;"></div>
			</div>
		</div>
		<!--轮播图 结束-->
		<div class="logo">
			<img src="images/login.gif" />
			<div>
				<h1>湖南工程出品</h1>
				<p>版本号:20.7.10</p>
			</div>
		</div>
		<div class="form_tzgg">
			<div class="form">
				<form action="teacher/login" method="post" class="layui-form">
					<div class="title">用户登录</div>
					<div class="con" onclick="getFocus(this)">
						<input type="text" name="name" lay-verify="userName"
							placeholder="请输入您的用户名" autocomplete="off" class="layui-input">
					</div>
					<div class="con" onclick="getFocus(this)">
						<input type="password" name="pwd" required
							lay-verify="passWord" placeholder="请输入您的账户密码" autocomplete="off"
							class="layui-input">
					</div>
					
					<p style="margin-left: ; color: red;">${tip}</p>
					<div class="layui-form-item">
					<div class="layui-input-inline">
						<input value="登录" type="submit" class="layui-btn" lay-submit
							lay-filter="formDemo" />
					</div>
					<div class="layui-input-inline">
						<a href="register.jsp">注册申请</a>
					</div>
					</div>
				</form>
			</div>
			<script>
				layui.use('form', function() {
					var form = layui.form;
					form.verify({
						userName : function(value, item) { //value：表单的值、item：表单的DOM对象
							if (value == null || value == "") {
								return '请输入您的用户名！';
							}
						},
						passWord : function(value, item) {
							if (value == null || value == "") {
								return '请输入您的账户密码！';
							}
						}
					});
				});
			</script>
			<div class="tzgg">
				<div class="title">通知公告</div>
				<div class="con">
					<ul>
						<li><span>05-01</span><a target="_blank">湖底捞框架升级</a></li>
						<li><span>04-16</span><a target="_blank">没有最好的代码，只有最好的思路</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--主体 结束-->
</body>
</html>