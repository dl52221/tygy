<%@page contentType="text/html;chorset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>电商平台后台管理</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<!--    <script src="http://d3js.org/d3.v3.min.js"></script> -->
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>
<script type="text/javascript">
	//使用JavaScript显示数据
	$(function(){
		//异步请求
		$.ajax({
			url:"findToTree.category",
			dataType:"json",
			success:function(categories){
				//递归
				findToTree(categories);
			}
		});
		function findToTree(categories){
			var tr = "";
			//递归算法
			for(let i in categories){
				let c = categories[i];
				if(c.grade==1){
					str = "";
				}else if(c.grade==2){
					str = "---";
				}else if(c.grade==3){
					str = "------";
				}
				//创建模板
				var tr = "<tr>" +
				"<td>"+c.id+"</td>" +
				"<td>"+(str +c.name)+"</td>" +
				"<td>"+c.descr+"</td>" +
				"<td>"+c.pid+"</td>" +
				"<td>"+c.leaf+"</td>" +
				"<td>"+c.grade+"</td>" +
				"<td>" +
					"<div class='btn-group'>" +
					"<button class='btn'>操作</button>" +
					"<button data-toggle='dropdown' class='btn dropdown-toggle'>" +
					"<span class='caret'></span>" +
					"</button>" +
					"<ul class='dropdown-menu'>" +
					"<li>" +
						"<a href='findById.category?id="+c.id+"'>添加子类别</a>" +
						"<a href='#'>修改</a>" +
						"<a href='#'>删除</a>" +
					"</li>" +
				"</ul>" +
			"</div>" +
		"</td>" +
	"</tr>";
	
	//递归判断
	if(!c.leaf){
		$(tr).appendTo("#tableTree");
		findToTree(c.children);
	}else{
		$(tr).appendTo("#tableTree");
	}
			}
		}
	});
</script>
</head>
<body>
	<!-- header部分 -->
	<%@include file="header.jsp"%>
	<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span12">
						<a href="#newUserModal" data-toggle="modal" class="btn pull-right">添加根类别</a>
						<h4 class="header">类别列表</h4>
						<table class="table table-striped sortable">
							<thead>
								<tr>
									<th>类别ID</th>
									<th>类别名称</th>
									<th>类别描述</th>
									<th>上一级类别ID</th>
									<th>是否是叶子节点</th>
									<th>级别</th>
								</tr>
							</thead>
							<tbody id="tableTree">
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
					<h3>添加根类别</h3>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" action="addRoot.category" method="post">
						<div class="control-group">
							<label for="inputEmail"  class="control-label">类别名称</label>
							<div class="controls">
								<input id="inputEmail" name="name" type="text" placeholder="请输根类别" />
							</div>
						</div>
						<div class="control-group">
							<label for="inputCurrentPassword"  class="control-label">类别描述
							</label>
							<div class="controls">
								<textarea rows="5" cols="20" name="descr"></textarea>
							</div>
						</div>
						
						
						<div class="modal-footer">
							<a href="#" data-dismiss="modal" class="btn">关闭</a><input
								type="submit" class="btn btn-primary"
								value="添加" />
						</div>
					</form>
				</div>
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