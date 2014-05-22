<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>管理中心 -- 知识库系统</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
<link type="text/css" rel="stylesheet" href="./css/main.css" media="screen" charset="utf-8">
<link rel="stylesheet" type="text/css" href="./css/register.css">
<link rel="stylesheet" type="text/css" href="./css/center.css">
<script type="text/javascript" src="./js/jquery/jquery.js"></script>
<body class="user-style ms-windows">
	<!-- body -->
	<jsp:include page="../pagepart/admin_top.jsp"></jsp:include>
	<!-- content -->
	<div id="content">
		<div id="content-inner">
			<!-- .left-nav-box start -->
			<s:set value="30" var="part_page_number" scope="session" />
			<jsp:include page="../pagepart/admin/left_box/left_nav_box.jsp"></jsp:include>
			<!-- .left-nav-box END -->
			<!-- .right-box -->
			<%-- 用户列表 --%>
			<jsp:include page="../pagepart/admin/right_box/user_manager/list_user.jsp"></jsp:include>
			<!-- .right-box END -->
		</div>
	</div>
	<jsp:include page="../pagepart/bottom.jsp"></jsp:include>
</body>
</html>

