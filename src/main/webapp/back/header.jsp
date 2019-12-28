<%@page contentType="text/html;chorset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String path = request.getContextPath();
%>
<!-- header -->
<div id="in-nav">
	<div class="container">
		<div class="row">
			<div class="span12">
				<ul class="pull-right">
					<li><a href="<%=path %>/pre/user_register.jsp">前台用户注册</a></li>
					<li><a href="#">链接2</a></li>
					<li><a href="#">链接3</a></li>
					<li><a href="login.html">登录</a></li>
					<li><a href="javascript:void(0);" onclick="logout()">注销</a></li>
					<li><a href="regist.html">管理员注册</a></li>
				</ul>
				<h4>
					<a id="logo" href="index.html"> 电商平台后台<strong>管理</strong>
					</a>
				</h4>
			</div>
		</div>
	</div>

</div>
<div id="in-sub-nav">
	<div class="container">
		<div class="row">
			<div class="span12">
				<ul>
					<li><a href="index.jsp" class="active"><i
							class="batch home"></i><br />主页</a></li>
					<li><span class="label label-important pull-right">08</span><a
						href="findAll.admin"><i class="batch stream"></i><br />管理员列表</a></li>
					<li><a href="findAll.user"><i class="batch users"></i><br />用户列表</a></li>
					<li><a href="findAll.category"><i class="batch forms"></i><br />类别列表</a></li>
					<li><a href="products.html"><i class="batch quill"></i><br />商品列表</a></li>
					<li><span class="label label-important pull-right">04</span><a
						href="orders.html"><i class="batch plane"></i><br />订单列表</a></li>
					<li><a href="anothers.html"><i class="batch calendar"></i><br />其它扩展功能</a></li>
					<li><a href="settings.html"><i class="batch settings"></i><br />系统设置</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
