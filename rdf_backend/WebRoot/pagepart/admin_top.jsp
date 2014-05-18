<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

	<div id="head">
		<div id="head-inner">
			<div class="head-inner-left">
				<ul>
					<li class="logo"><a href="${RDF_FRONTS_HREF }" style="display: block; height: 50px; width: 200px; padding-top: 25px;"> <img src="images/logo_reg.png" alt="logo" />
					</a></li>
					<i></i>
					<li class="info">用户中心</li>
				</ul>
			</div>
			<div class="head-inner-right">
				<span>欢迎您</span> <span><strong>谢先斌</strong></span> <span>设置&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<button class="login-btn" id="login_btn">退出</button>
			</div>
		</div>
	</div>
	<!-- nav -->
	<div id="nav">
		<div class="nav-2">
			<div class="mod-nav clearfix">
				<h1 class="page-type-notab"></h1>
			</div>
		</div>
	</div>