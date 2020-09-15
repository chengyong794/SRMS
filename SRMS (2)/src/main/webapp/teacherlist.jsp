<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>科研成果管理系统</title>
</head>

<body>
	<!-- 公共样式 开始 -->
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css"
		integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
		crossorigin="anonymous">
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js"
		integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		crossorigin="anonymous"></script>
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
	<!-- 公共样式 结束 -->
	<script type="text/javascript">
		function aa(tno, name, dno, pwd, pic, birthday, tel, type) {
			document.getElementById("tno").value = tno;
			document.getElementById("name").value = name;
			document.getElementById("pwd").value = pwd;
			document.getElementById("birthday").value = birthday;
			document.getElementById("tel").value = tel;
			document.getElementById("type").value = type;
			if(dno=='001'){
				$("#selectdno option[value='001']").prop("selected",true);
			}else if(dno=='002'){
				$("#selectdno option[value='002']").prop("selected",true);
			}
			$("#pic").attr("src","/headpic/"+pic);
		}
	</script>
</head>
<style>
body {
	background: #edecfb;
}
/* elemnntui重写样式 */
.iq-card {
	margin: 30px 50px;
}
</style>
<body>
	<div class="Body">
		<div class="console">
			<form class="layui-form" action="gettypedishes">
				<div class="layui-form-item">
					<!-- <div class="layui-input-inline">
							<input type="text" name="name" required lay-verify="required" placeholder="输入菜品名称" autocomplete="off" class="layui-input">
						</div> -->

					<!-- <a href="getall"><input class="layui-btn" type="button" lay-submit lay-filter="formDemo" value="返回" /></a> -->

				</div>
			</form>
			<script>
				
			</script>
		</div>
		<div class="iq-card">
			<div class="iq-card-header d-flex justify-content-between">
				<div class="iq-header-title">
					<h4 class="card-title">学院信息管理</h4>
				</div>
			</div>
			<div class="iq-card-body">
				<p>
					The
					<code>.table </code>
					class adds basic styling to a table.
				</p>
				<button style="margin-left: 1380px;" type="button" class="layui-btn"
					data-toggle="modal" data-target="#exampleModal">添加部门</button>
				<table class="table">
					<thead>
					<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModal">添加</button>
						<tr>
							<th scope="col">教工号</th>
							<th scope="col">姓名</th>
							<th scope="col">学院</th>
							<th scope="col">照片</th>
							<th scope="col">出生日期</th>
							<th scope="col">联系方式</th>
							<th scope="col">权限级别</th>
							<th scope="col">操作</th>
						</tr>
					</thead>
					<tbody>
					<tbody>
						<c:forEach var="teacher" items="${listofteacher}">
							<tr>
								<td scope="row">${teacher.tno}</td>
								<td>${teacher.name}</td>
								<td>${teacher.dept.name}</td>
								<td><img src="/headpic/${teacher.pic}"/></td>
								<!-- 修改为image -->
								<td scope="row">${teacher.birthday}</td>
								<td>${teacher.tel}</td>
								<td scope="row">${teacher.type}</td>

								<td><a style="color: white" class="btn btn-danger"
									onclick="delCustomList('${teacher.tno}')">删除</a>
									<button type="button" class="btn btn-primary"
										onclick="aa('${teacher.tno}','${teacher.name}'
										,'${teacher.dept.dno}','${teacher.pwd}','${teacher.pic}'
										,'${teacher.birthday}','${teacher.tel}'
										,'${teacher.type}')"
										data-toggle="modal" data-target="#teachchange">编辑</button>
									
							    </td>
							</tr>
						</c:forEach>
					</tbody>
					</tbody>

				</table>
			</div>
		</div>
       
       <!-- teacher保存start -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">教师信息</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>

					</div>
					<div class="modal-body">
						<form action="teacher/save" method="post" style="margin-left: 100px;">
							<div style="margin-left: -100px;">
								<div class="input-group flex-nowrap">
									<div class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">教工号</span>
									</div>
									<input required autocomplete="off" name="tno"
										style="width: 100px;" type="text" class="form-control"
										aria-label="教工号" aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">姓名</span>
									</div>
									<input required autocomplete="off" name="name"
										style="width: 100px; margin-top: 10px" type="text"
										class="form-control" aria-label="姓名
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">学院</span>
									</div>
									<select name="dno">
									  <option value="001">湖南工程</option>
									  <option value="002">信息学院</option>
									</select>
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">密码</span>
									</div>
									<input type="password" required autocomplete="off" name="pwd"
										style="width: 100px; margin-top: 10px" " type="text"
										maxlength="11" class="form-control" aria-label="密码"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">权限级别</span>
									</div>
									<input required autocomplete="off" name="type"
										style="width: 100px; margin-top: 10px" " type="text"
										maxlength="11" class="form-control" aria-label="权限级别"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">联系方式</span>
									</div>
									<input required autocomplete="off" name="tel"
										style="width: 100px; margin-top: 10px" " type="text"
										maxlength="11" class="form-control" aria-label="联系方式"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">出生日期</span>
									</div>
									<input required autocomplete="off" name="birthday"
										style="width: 100px; margin-top: 10px" " type="text"
										maxlength="11" class="form-control" aria-label="出生日期"
										aria-describedby="addon-wrapping">
								</div>
								
								   <div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">照片</span>
									</div>
									<input type="hidden" id="filename" name="pic"/>
									<button type="button" class="layui-btn" id="file">
                                         <i class="layui-icon">&#xe67c;</i>上传照片
                                    </button>
									
								</div>
								<input id="sub" class="btn btn-outline-dark" type="submit"
									lay-submit lay-filter="formDemo" value="确定"
									style="margin-left: 170px; margin-top: 10px; width: 100px" />
							</div>

						</form>
					</div>
					<!--  
					 <div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div> 
					-->
				</div>
			</div>
		</div>
		<!-- teacher保存end -->
		
		
		<!-- teacher修改start -->
		<div class="modal fade" id="teachchange" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">部门修改</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="teacher/update" method="post" style="margin-left: 100px;">
							<div style="margin-left: -100px;">
								<div class="input-group flex-nowrap">
									<div class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">教工号</span>
									</div>
									<input required autocomplete="off" id="tno" name="tno"
										style="width: 100px;" type="text" class="form-control"
										aria-label="教工号" aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">姓名</span>
									</div>
									<input required autocomplete="off" id="name" name="name"
										style="width: 100px; margin-top: 10px" type="text"
										class="form-control" aria-label="姓名"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">学院</span>
									</div>
									
									<select id="selectdno" name="dno">
									  <option value="001">湖南工程</option>
									  <option value="002">信息学院</option>
									</select>
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">密码</span>
									</div>
									<input type="password" required autocomplete="off" id="pwd" name="pwd"
										style="width: 100px; margin-top: 10px"
										maxlength="11" class="form-control" aria-label="密码"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">权限级别</span>
									</div>
									<input type="text" required autocomplete="off" id="type" name="type"
										style="width: 100px; margin-top: 10px"
										maxlength="11" class="form-control" aria-label="权限级别"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">联系方式</span>
									</div>
									<input type="text" required autocomplete="off" id="tel" name="tel"
										style="width: 100px; margin-top: 10px"
										maxlength="11" class="form-control" aria-label="联系方式"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">出生日期</span>
									</div>
									<input type="text" autocomplete="off" id="birthday" name="birthday"
										style="width: 100px; margin-top: 10px;"
										maxlength="11" class="form-control" aria-label="出生日期"
										aria-describedby="addon-wrapping">
								</div>
								
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">照片</span>
									</div>
									<input type="hidden" id="filename1" name="pic"/>
									<button type="button" class="layui-btn" id="file1">
										<i class="layui-icon">&#xe67c;</i>上传照片
									</button>
									<img src="" id="pic"/>
								</div>
								<input id="sub" class="btn btn-outline-dark" type="submit"
									lay-submit lay-filter="formDemo" value="保存"
									style="margin-left: 170px; margin-top: 10px; width: 100px" />
							</div>

						</form>
					</div>
					<!-- <div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div> -->
				</div>
			</div>
		</div>
		<!-- teacher修改end -->
	</div>

<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript" src="layui/layui.all.js"></script>
<script>
				layui.use([ 'form', 'laydate' ,'jquery','layer','upload'], function() {
					var $ = layui.jquery;
					var upload = layui.upload;
					var layer = layui.layer;
					
					
					var uploadInst = upload.render({
					    elem: '#file' //绑定元素
					    ,url: 'upload/' //上传接口
						,method:"post"
						,field:"file"
					    ,done: function(res){
					      //上传完毕回调
							   $("#filename").val(res.filename);
					    }
					    ,error: function(){
					      //请求异常回调
					      
					    }
					  });

					var uploadInst = upload.render({
						elem: '#file1' //绑定元素
						,url: 'upload/' //上传接口
						,method:"post"
						,field:"file"
						,done: function(res){
							//上传完毕回调
							$("#filename1").val(res.filename);
						}
						,error: function(){
							//请求异常回调

						}
					});
				});
				
				
				function delCustomList(dno){
					layer.confirm('确定要删除么？', {
						btn : [ '确定', '取消' ]
					//按钮
					}, function() {
						window.location.href = 'teacher/delete?tno=' + dno;
						layer.msg('删除成功', {
							icon : 1
						});
					}, function() {
						layer.msg('取消删除', {
							time : 2000
						//20s后自动关闭
						});
					});
				}
				
		</script>	
	
</body>
</html>
