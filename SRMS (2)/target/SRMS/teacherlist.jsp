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
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
		 crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		 crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		 crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
		 crossorigin="anonymous"></script>
		<link rel="stylesheet" type="text/css" href="css/base.css">
		<link rel="stylesheet" type="text/css" href="css/iconfont.css">
		<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
		<script type="text/javascript" src="layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="css/jquery.mCustomScrollbar.css">
		<script src="framework/jquery-ui-1.10.4.min.js"></script>
		<script src="framework/jquery.mousewheel.min.js"></script>
		<script src="framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="framework/cframe.js"></script>
		<!-- 仅供所有子页面使用 -->
		<link rel="stylesheet" href="css/typography.css">
		<!-- 公共样式 结束 -->
		<script type="text/javascript">
			function aa(tno, name, dno, pwd, photo, birthday, mobile, type, remark) {
				document.getElementById("tno").value = tno;
				document.getElementById("name").value = name;
				document.getElementById("dno").value = dno;
				document.getElementById("pwd").value = pwd;
				document.getElementById("photo").value = photo;
				document.getElementById("birthday").value = birthday;
				document.getElementById("mobile").value = mobile;
				document.getElementById("type").value = type;
				document.getElementById("remark").value = remark;
			}
		</script>
		</head>
		<style>
			body {
	background: #edecfb;
}
#addbtn{
	float:right;
	position: relative;
	top: -8px;
	left: -50px;;
}
#file{
		border-radius: 0px 10px 10px 0rem;
		background-color: #fff
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
						 <div id="date"></div>
						<button id="addbtn" style="float:right;" type="button"
					class="btn btn-success"	 data-toggle="modal" data-target="#exampleModal">添加部门</button>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">教工号</th>
									<th scope="col">姓名</th>
									<th scope="col">学院</th>
									<th scope="col">照片</th>
									<th scope="col">出生日期</th>
									<th scope="col">联系方式</th>
									<th scope="col">权限级别</th>
									<th scope="col">备注</th>
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
										<td>${teacher.photo}</td>
										<!-- 修改为image -->
										<td scope="row">${teacher.birthday}</td>
										<td>${teacher.mobile}</td>
										<td scope="row">${teacher.type}</td>
										<td scope="row">${teacher.remark}</td>

										<td><a style="color: white" class="btn btn-danger" onclick="delCustomList(this,'${dept.dno}')">删除</a>
											<button type="button" class="btn btn-primary" onclick="aa('${tno}','${name}','${dno}','${pwd}','${photo}','${birthday}','${mobile}','${type}','${remark}')"
											 data-toggle="modal" data-target="#teacherchange">编辑</button></td>
									</tr>
								</c:forEach>
							</tbody>
							</tbody>

						</table>
					</div>
				</div>

				<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
				 aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">教师信息</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>

							</div>
							<div class="modal-body">
								<form action="teacher/save" enctype="multipart/form-data" style="margin-left: 100px;">
									<div style="margin-left: -100px;">
										<div class="input-group flex-nowrap">
											<div class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">教&nbsp;&nbsp;工&nbsp;&nbsp;号</span>
											</div>
											<input required autocomplete="off" name="tno" style="width: 100px;" type="text" class="form-control"
											 aria-label="教工号" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;&nbsp;&nbsp;姓&nbsp;&nbsp;名&nbsp;&nbsp;</span>
											</div>
											<input required autocomplete="off" name="name" style="width: 100px; margin-top: 10px" type="text" class="form-control"
											 aria-label="姓名;" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;</span>
											</div>
											<input required autocomplete="off" name="pwd" style="width: 100px; margin-top: 10px" type="password" class="form-control"
											 aria-label="密码" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">出生日期</span>
											</div>
											<!--下拉选框-->
											<input id="dateinpt" required autocomplete="off" name="birthday" style="width: 100px; margin-top: 10px" " type=" text"
											 maxlength="11" class="form-control" aria-label="出生日期" aria-describedby="addon-wrapping">
											
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;&nbsp;学&nbsp;&nbsp;院&nbsp;&nbsp;&nbsp;</span>
											</div>
											<select id="dnoselect" required autocomplete="off" name="dno" 
											style="width: 100px; margin-top: 10px" 
											 class="form-control city" aria-label="请选择学院" aria-describedby="addon-wrapping">
												<option value="0">请选择学院</option>
											</select>

										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">联系方式</span>
											</div>
											<input required autocomplete="off" name="mobile" style="width: 100px; margin-top: 10px" type="password" class="form-control"
											 aria-label="联系方式" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;&nbsp;头&nbsp;&nbsp;像&nbsp;&nbsp;&nbsp;</span>
											</div>
											<input required autocomplete="off" name="photo" style="width: 100px; margin-top: 10px"
											 type="text" class="form-control" readonly="readonly" id="file"
											 aria-label="头像" aria-describedby="addon-wrapping"
											 value="请选择头像">
											
											
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">账号类型</span>
											</div>
											<input required autocomplete="off" name="type" style="width: 100px; margin-top: 10px" type="text" class="form-control"
											 aria-label="账号类型" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;&nbsp;备&nbsp;&nbsp;注&nbsp;&nbsp;&nbsp;</span>
											</div>
											<input required autocomplete="off" name="type" style="width: 100px; margin-top: 10px" type="text" class="form-control"
											 aria-label="备注" aria-describedby="addon-wrapping">
										</div>
										
										
										<input id="sub" class="btn btn-outline-dark" type="submit" lay-submit lay-filter="formDemo" value="确定" style="margin-left: 170px; margin-top: 10px; width: 100px" />
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
				<div class="modal fade" id="teacherchange" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
				 aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">部门修改</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="dept/update" style="margin-left: 100px;">
									<div style="margin-left: -100px;">
										<div class="input-group flex-nowrap">
											<div class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">教工号</span>
											</div>
											<input id="dno" name="teacher.tno" readonly="readonly" autocomplete="off" name="dno" style="width: 100px;"
											 type="text" class="form-control" aria-label="部门编号" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">部门名称</span>
											</div>
											<select required name="teacher.dno" tyle="width: 100px; margin-top: 10px">
												<!--ajax请求获取-->
												<option>1</option>
											</select>
											<input required id="name" name="name" autocomplete="off" name="name" style="width: 100px; margin-top: 10px"
											 type="text" class="form-control" aria-label="部门名称" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">负&nbsp;&nbsp;责&nbsp;&nbsp;人</span>
											</div>
											<input required id="leader" name="leader" autocomplete="off" name="leader" style="width: 100px; margin-top: 10px"
											 " type=" text" class="form-control" aria-label="负责人" aria-describedby="addon-wrapping">
										</div>
										<div class="input-group flex-nowrap">
											<div style="margin-top: 10px" class="input-group-prepend">
												<span class="input-group-text" id="addon-wrapping">联系电话</span>
											</div>
											<input required id="tel" name="tel" autocomplete="off" name="tel" style="width: 100px; margin-top: 10px"
											 " type=" text" maxlength="11" class="form-control" aria-label="联系电话" aria-describedby="addon-wrapping">
										</div>
										<input id="sub" class="btn btn-outline-dark" type="submit" lay-submit lay-filter="formDemo" value="保存" style="margin-left: 170px; margin-top: 10px; width: 100px" />
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
				<script>
					//删除
					$(function() {
						//			$(".sidebar-scrollbar .iq-sidebar-menu li li").CLICK(fun)
						//			alert(123)
						//			$("li").addClass("action")
						
						dnoselect()
					});

					function dnoselect(){
						$.ajax({
							url: "dept/listjson",
							type: "post",
							//data : data,
							success: function(res) {
								console.log(res.data);
								let data = res.data;
								$("#dnoselect option").remove();
								for(let i in data){
									console.log(i)
									$("#dnoselect").append("<option value='"+data[i].dno+"'>"+data[i].name+"</option>");
								}
						
							}
						
						})
					};

					function delCustomList(_this, tno) {
						layui.use(['form', 'laydate'], function() {
							layer.confirm('确定要删除么？', {
								btn: ['确定', '取消']
								//按钮
							}, function() {
								window.location.href = 'teacher/delete?tno=' + tno;
								layer.msg('删除成功', {
									icon: 1
								});
							}, function() {
								layer.msg('取消删除', {
									time: 2000
									//20s后自动关闭
								});
							});
						});
					};


					layui.use('upload', function(){
						  var upload = layui.upload;
						   
						  //执行实例
						  var uploadInst = upload.render({
						    elem: '#file' //绑定元素
						    ,url: 'upload/' //上传接口
							,method:"post"
						    ,done: function(res){
						      //上传完毕回调
							  if(res.state=1){
								   $(file).val(res.filename);
								   
							  }else{
								  // layer.open({
								  //   title: '上传出错'
								  //   ,content: '请选择合适图片
								  // });     
								    
									}
						    }
						    ,error: function(){
						      //请求异常回调
						      
						    }
						  });
						});
				</script>
			</div>
		</body>
	</body>
</html>
