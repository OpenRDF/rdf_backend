<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- .left-nav-box start -->
<div class="left-nav-box">
	<!-- 系统管理 -->
	<div class="left-nav-box-item">
		<div class="box-hd">
			<h3 class="title">系统管理</h3>
		</div>
		<div class="box-bd">
			<s:set value="11" var="part_page_number" scope="session" />
			<ul class="left-nav-list">
				<li class="current"><a href="#" onclick='function(){<s:set value="10" var="part_page_number" scope="page" />}'>查询知识点</a></li>
				<li><a href="#" onclick='function(){<s:set value="11" var="part_page_number" scope="page" />}'>添加知识点</a></li>
				<li><a href="#">更新知识点</a></li>
				<li><a href="#">删除知识点</a></li>
			</ul>
		</div>
	</div>
	<!-- 搜索管理 -->
	<div class="left-nav-box-item">
		<div class="box-hd">
			<h3 class="title">搜索管理</h3>
		</div>
		<div class="box-bd">
			<ul class="left-nav-list">
				<li><a href="#">搜索统计</a></li>
				<li><a href="#">搜索分类</a></li>
				<li><a href="#">搜索记录</a></li>
				<li><a href="#">收藏查询</a></li>
			</ul>
		</div>
	</div>
	<!-- 用户管理 -->
	<div class="left-nav-box-item">
		<div class="box-hd">
			<h3 class="title">用户管理</h3>
		</div>
		<div class="box-bd">
			<ul class="left-nav-list">
				<li><a href="#">用户列表</a></li>
				<li><a href="#">添加用户</a></li>
				<li><a href="#">查询用户</a></li>
			</ul>
		</div>
	</div>
	<!-- 个人中心 -->
	<div class="left-nav-box-item">
		<div class="box-hd">
			<h3 class="title">个人中心</h3>
		</div>
		<div class="box-bd">
			<ul class="left-nav-list">
				<li><a href="#">个人信息</a></li>
				<li><a href="#">修改密码</a></li>
				<li><a href="#" target="_blank">退出系统</a></li>
			</ul>
		</div>
	</div>
</div>
<!-- .left-nav-box END -->
