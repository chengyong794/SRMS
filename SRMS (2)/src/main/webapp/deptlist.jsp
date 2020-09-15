<%@page import="com.spring.bean.DeptBean"%>
<%@page import="java.util.List"%>
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
	<link rel="stylesheet" type="text/css" href="css/base.css">
	<link rel="stylesheet" type="text/css" href="css/iconfont.css">
	<script type="text/javascript" src="framework/jquery-1.11.3.min.js"></script>
	<link rel="stylesheet" type="text/css" href="layui/css/layui.css">
	<script type="text/javascript" src="layui/layui.js"></script>
	<!-- 滚动条插件 -->
	<link rel="stylesheet" type="text/css"
		href="css/jquery.mCustomScrollbar.css">
	<script src="framework/jquery-ui-1.10.4.min.js"></script>
	<script src="framework/jquery.mousewheel.min.js"></script>
	<script src="framework/jquery.mCustomScrollbar.min.js"></script>
	<script src="framework/cframe.js"></script>
	<!-- 仅供所有子页面使用 -->
	<link rel="stylesheet" href="css/typography.css">
	<!-- 公共样式 结束 -->
	<script type="text/javascript">
		function aa(dno, name, principal, mobile,remark) {
			document.getElementById("dno").value = dno;
			document.getElementById("name").value = name;
			document.getElementById("principal").value = principal;
			document.getElementById("mobile").value = mobile;
			document.getElementById("remark").value = remark;
		}
	</script>
</head>
<style>
body {
	background: #edecfb;
}
/* elemnntui重写样式 */
.iq-card{
	margin:30px 50px;
}
#addbtn{
	float:right;
	position: relative;
	top: -8px;
	left: -50px;;
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
		<div class="iq-card" >
			<div class="iq-card-header d-flex justify-content-between">
				<div class="iq-header-title">
					<h4 class="card-title">学院信息管理</h4>
				</div>
			</div>
			<div class="iq-card-body" >
			<button id="addbtn" style="float:right;" type="button"
					class="btn btn-success"	 data-toggle="modal" data-target="#exampleModal">添加部门</button>
				<p>
					The
					<code>.table </code>
					class adds basic styling to a table.
				</p>
				
				<table class="table">
					<thead>
						<tr>
							<th scope="col">部门编号</th>
							<th scope="col">部门名称</th>
							<th scope="col">负责人</th>
							<th scope="col">联系电话</th>
							<th scope="col">备注</th>
							<th scope="col">操作</th>
						</tr>
					</thead>
					<tbody>
					<tbody>
						<c:forEach var="dept" items="${listofdept}">
							<tr>
								<td scope="row">${dept.dno}</td>
								<td>${dept.name}</td>
								<td>${dept.principal}</td>
								<td>${dept.mobile}</td>
								<td>${dept.remark}</td>
								<td><a style="color: white" class="btn btn-danger"
									onclick="delCustomList(this,'${dept.dno}')">删除</a>
									<button type="button" class="btn btn-primary"
										onclick="aa('${dept.dno}','${dept.name}','${dept.principal}','${dept.mobile}','${dept.remark}')"
										data-toggle="modal" data-target="#deptchange">编辑</button></td>
							</tr>
						</c:forEach>
					</tbody>
					</tbody>

				</table>
			</div>
		</div>
		
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">部门信息</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						
					</div>
					<div class="modal-body">
						<form action="dept/save" style="margin-left: 100px;">
							<div style="margin-left: -100px;">
								<div class="input-group flex-nowrap">
									<div class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">部门编号</span>
									</div>
									<input required autocomplete="off" name="dno"
										style="width: 100px;" type="text" class="form-control"
										aria-label="部门编号" aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">部门名称</span>
									</div>
									<input required autocomplete="off" name="name"
										style="width: 100px; margin-top: 10px" type="text"
										class="form-control" aria-label="部门名称"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">负&nbsp;&nbsp;责&nbsp;&nbsp;人</span>
									</div>
									<input required autocomplete="off" name="principal"
										style="width: 100px; margin-top: 10px"  type="text"
										class="form-control" aria-label="负责人"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">联系电话</span>
									</div>
									<input required autocomplete="off" name="mobile"
										style="width: 100px; margin-top: 10px" type="text"
										maxlength="11" class="form-control" aria-label="联系电话"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;备&nbsp;&nbsp;&nbsp;&nbsp;注&nbsp;&nbsp;</span>
									</div>
									<input required autocomplete="off" name="remark"
										style="width: 100px; margin-top: 10px"  type="text"
										maxlength="11" class="form-control" aria-label="备注"
										aria-describedby="addon-wrapping">
								</div>
								<input id="sub" class="btn btn-outline-dark" type="submit"
									lay-submit lay-filter="formDemo" value="确定"
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
		<div class="modal fade" id="deptchange" tabindex="-1" role="dialog"
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
						<form action="dept/update" style="margin-left: 100px;">
							<div style="margin-left: -100px;">
								<div class="input-group flex-nowrap">
									<div class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">部门编号</span>
									</div>
									<input id="dno" name="dno" readonly="readonly"
										autocomplete="off" name="dept.dno" style="width: 100px;"
										type="text" class="form-control" aria-label="部门编号"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">部门名称</span>
									</div>
									<input required id="name" name="name" autocomplete="off"
										style="width: 100px; margin-top: 10px" type="text"
										class="form-control" aria-label="部门名称"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">负&nbsp;&nbsp;责&nbsp;&nbsp;人</span>
									</div>
									<input required id="principal" name="principal" autocomplete="off"
										style="width: 100px; margin-top: 10px"
										type="text" class="form-control" aria-label="负责人"
										aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">联系电话</span>
									</div>
									<input required id="mobile" name="mobile" autocomplete="off"
										name="tel" style="width: 100px; margin-top: 10px"
										type="text" maxlength="11" class="form-control"
										aria-label="联系电话" aria-describedby="addon-wrapping">
								</div>
								<div class="input-group flex-nowrap">
									<div style="margin-top: 10px" class="input-group-prepend">
										<span class="input-group-text" id="addon-wrapping">&nbsp;&nbsp;备&nbsp;&nbsp;&nbsp;&nbsp;注&nbsp;&nbsp;</span>
									</div>
									<input required id="remark" name="remark" autocomplete="off"
										style="width: 100px; margin-top: 10px"
										type="text" maxlength="11" class="form-control"
										aria-label="联系电话" aria-describedby="addon-wrapping">
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
		<script>
			//删除
			function delCustomList(_this, dno) {
				layui.use([ 'form', 'laydate' ], function() {
					layer.confirm('确定要删除么？', {
						btn : [ '确定', '取消' ]
					//按钮
					}, function() {
						window.location.href = 'dept/delete?dno=' + dno;
						layer.msg('删除成功', {
							icon : 1
						});
					}, function() {
						layer.msg('取消删除', {
							time : 2000
						//20s后自动关闭
						});
					});
				});
			}
		</script>
	</div>
</body>
</body>
</html>