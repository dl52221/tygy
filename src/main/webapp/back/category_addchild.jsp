<%@page contentType="text/html;chorset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />

<title>添加子类别</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.css" />
<link rel="stylesheet" href="css/styles.css" />
<link rel="stylesheet" href="css/toastr.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.knob.js"></script>
<script src="js/jquery.sparkline.min.js"></script>
<script src="js/toastr.js"></script>
<script src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/gcal.js"></script>
<script src="js/setup.js"></script>

<style type="text/css">
textarea {
    resize: none;
}
</style>
</head>
<body>
	<!-- header部分 -->
	<%@include file="header.jsp"%>
		<div class="page">
		<div class="page-container">
			<div class="container">
				<div class="row">
					<div class="span12">
						<h4 class="header">添加子类别</h4>
						<form action="addChild.category" method="post">
							
							<table class="table table-striped sortable">
								<thead>
								</thead>
								<tbody>
									<tr>
										<th>类别名称</th>
										<td><input type="text" name="name"/><input type="hidden" name="pid" value="${c.id}"></input></td>
									</tr>
									<tr>
										<th>类别描述</th>
										<td><textarea rows="5" cols="20" name="descr"></textarea></td>
									</tr>
									
									<tr>
										<th>所属类别</th>
										<td><span>${c.name}</span></td>
									</tr>
									
									<tr>
										<td></td>
										<td><input class="btn btn-success" type="submit"
											value="添加" />&nbsp;&nbsp;&nbsp;<input class="btn btn-danger"
											type="reset" value="重置" /></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
<script src="js/d3-setup.js"></script>

</html>