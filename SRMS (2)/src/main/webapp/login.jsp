<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>科研成果管理系统</title>
<!-- 公共样式 开始 -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="css/message.css">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="bookmark" href="images/favicon.ico" />
<link rel="stylesheet" type="text/css" href="css/base.css">
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
<!--[if lt IE 9]>
	      	<script src="framework/html5shiv.min.js"></script>
	      	<script src="framework/respond.min.js"></script>
	    <![endif]-->
<script type="text/javascript" src="layui/layui.js"></script>
<!-- 滚动条插件 -->
<link rel="stylesheet" type="text/css"
	href="css/jquery.mCustomScrollbar.css">
<script src="framework/jquery-ui-1.10.4.min.js"></script>
<script src="framework/jquery.mousewheel.min.js"></script>
<script src="framework/jquery.mCustomScrollbar.min.js"></script>
<script src="framework/cframe.js"></script>
<!-- 仅供所有子页面使用 -->
<!-- 公共样式 结束 -->
<script src="js/jquery.min.js"></script>
<script src="js/message.js"></script>
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/login.js"></script>
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
			<img src="images/login_logo.png" />
			<div>
				<h1>湖南工程出品</h1>
				<p>版本号:20.7.10</p>
			</div>
		</div>
		<div class="form_tzgg">
			<div class="form">
				<form action="login" method="post" class="layui-form">
					<div class="title">用户登录</div>
					<div class="con" onclick="getFocus(this)">
						<input type="text" name="userid" lay-verify="userName"
							placeholder="请输入您的用户名" autocomplete="off" class="layui-input">
					</div>
					<div class="con" onclick="getFocus(this)">
						<input type="password" name="userpwd" required
							lay-verify="passWord" placeholder="请输入您的账户密码" autocomplete="off"
							class="layui-input">
					</div>
					<p style="margin-left: ; color: red;">${tip}</p>
					<div class="but">
						<input value="登录" type="submit" class="layui-btn" lay-submit
							lay-filter="formDemo" />
					</div>
					<div class="apply">
						<a href="register.jsp">注册申请</a>
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