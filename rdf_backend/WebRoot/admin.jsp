<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<jsp:include page="pagepart/admin_top.jsp"></jsp:include>
	<!-- content -->
	<div id="content">
		<div id="content-inner">
			<!-- .left-nav-box start -->1${part_page_number}2
			<jsp:include page="pagepart/admin/left_box/left_nav_box.jsp"></jsp:include>
			<!-- .left-nav-box END -->
			<!-- .right-box -->
			<%-- 系统管理 --%>
			<s:if test="part_page_number=10">
				<jsp:include page="pagepart/admin/right_box/system_manager/query_knowledge_points.jsp"></jsp:include>
			</s:if>
			<s:elseif test="part_page_number=11">
				<jsp:include page="pagepart/admin/right_box/system_manager/add_knowledge_points.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=12">
				<jsp:include page="pagepart/admin/right_box/system_manager/update_knowledge_points.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=13">
				<jsp:include page="pagepart/admin/right_box/system_manager/delete_knowledge_points.jsp"></jsp:include>
			</s:elseif>
			<%-- 搜索管理 --%>
			<s:elseif test="part_page_number=20">
				<jsp:include page="pagepart/admin/right_box/search_manager/search_statistics.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=21">
				<jsp:include page="pagepart/admin/right_box/search_manager/search_classification.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=22">
				<jsp:include page="pagepart/admin/right_box/search_manager/search_history.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=23">
				<jsp:include page="pagepart/admin/right_box/search_manager/query_store.jsp"></jsp:include>
			</s:elseif>
			<%-- 用户管理 --%>
			<s:elseif test="part_page_number=30">
				<jsp:include page="pagepart/admin/right_box/user_manager/list_user.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=31">
				<jsp:include page="pagepart/admin/right_box/user_manager/add_user.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=32">
				<jsp:include page="pagepart/admin/right_box/user_manager/search_user.jsp"></jsp:include>
			</s:elseif>
			<%-- 个人中心 --%>
			<s:elseif test="part_page_number=40">
				<jsp:include page="pagepart/admin/right_box/person_center/user_infor.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=41">
				<jsp:include page="pagepart/admin/right_box/person_center/change_password.jsp"></jsp:include>
			</s:elseif>
			<s:elseif test="part_page_number=42">
				<jsp:include page="pagepart/admin/right_box/person_center/change_password.jsp"></jsp:include>
			</s:elseif>
			<!-- .right-box END -->
		</div>
	</div>
</body>
</html>

