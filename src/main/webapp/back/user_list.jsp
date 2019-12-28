<%@page contentType="text/html;chorset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="description" content="description of your site" />
<meta name="author" content="author of the site" />
<title>电商平台后台首页</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>
</head>
<body>
	<%@include file="header.jsp"%>

	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span12">
						<a href="#newUserModal" data-toggle="modal" class="btn pull-right">添加用户</a>
						<h4 class="header">用户列表</h4>
						<table class="table table-striped sortable">
							<thead>
								<tr>
									<th>用户ID</th>
									<th>用户名</th>
									<th>密码</th>
									<th>电话</th>
									<th>送货地址</th>
									<th>注册日期</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${users}" var="user">
									<tr>
										<td>${user.id}</td>
										<td>${user.name}</td>
										<td>${user.password}</td>
										<td>${user.phone}</td>
										<td>${user.addr}<span class="label label-success">已发货</span></td>
										<td>${user.rdate}</td>
										<td>
											<div class="btn-group">
												<button class="btn">操作</button>
												<button data-toggle="dropdown" class="btn dropdown-toggle">
													<span class="caret"></span>
												</button>
												<ul class="dropdown-menu">
													<li><a href="javascript:;"  onclick="resetPassword(${user.id})">重置密码</a> <a href="#">修改</a> <a
														 href="javascript:;"  onclick="deleteUser(${user.id})">删除</a></li>
												</ul>
											<script type="text/javascript">
												function deleteUser(id){
													if(confirm("你确定要删除吗")){
														if(confirm("你真的要删除吗")){
															window.location.herf = "delete.user?id=" + id;
														}
													}
												}
												function resetPassword(id){													
														if(confirm("你真的要重置吗")){
															window.location.herf = "resetPassword.user?id=" + id;
														}
												}
											</script>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class="pagination pagination-centered">
							<ul>
								<li class="disabled"><a href="#">&laquo;</a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="newUserModal" class="modal hide fade">
				<div class="modal-header">
					<button type="button" data-dismiss="modal" aria-hidden="true"
						class="close">&times;</button>
					<h3>新建用户</h3>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" action="add.do" method="post" />
					<div class="control-group">
						<label for="inputEmail" class="control-label">用户名</label>
						<div class="controls">
							<input id="inputEmail" type="text" placeholder="请输入用户名" />
						</div>
					</div>
					<div class="control-group">
						<label for="inputCurrentPassword" class="control-label">密码
						</label>
						<div class="controls">
							<input id="inputCurrentPassword" type="password"
								placeholder="请输入密码" />
						</div>
					</div>
					<div class="modal-footer">
						<a href="#" data-dismiss="modal" class="btn">关闭</a><input
							type="submit" data-dismiss="modal" class="btn btn-primary"
							value="添加用户" />
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
<script src="js/d3-setup.js"></script>
<script>
	protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
	address = protocol + window.location.host + window.location.pathname
			+ '/ws';
	socket = new WebSocket(address);
	socket.onmessage = function(msg) {
		msg.data == 'reload' && window.location.reload()
	}
</script>
</html>