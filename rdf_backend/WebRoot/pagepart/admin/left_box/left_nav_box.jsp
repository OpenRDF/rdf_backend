<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="left-nav-box">
	<!-- 系统管理 -->
	<div class="left-nav-box-item">
		<div class="box-hd">
			<h3 class="title">系统管理</h3>
		</div>
		<div class="box-bd">
			<ul class="left-nav-list">
				<li <s:if test="#session.part_page_number == 10">class="current"</s:if>>
					<a href="system_manager/searchConcept">查询知识点</a>
				</li>
				<li <s:if test="#session.part_page_number == 11">class="current"</s:if>>
					<a href="system_manager/addConcept">添加知识点</a>
				</li>
				<li <s:if test='#session.part_page_number == 12'>class="current"</s:if>>
					<a href="system_manager/updateConcept">更新知识点</a>
				</li>
				<li <s:if test='#session.part_page_number==13'>class="current"</s:if>>
					<a href="system_manager/listConcept">知识点列表</a>
				</li>
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
				<li <s:if test="#session.part_page_number == 20">class="current"</s:if>>
					<a href="search_manager/searchStatistics">搜索统计</a>
				</li>
				<li <s:if test="#session.part_page_number == 21">class="current"</s:if>>
					<a href="search_manager/searchHistory">搜索记录</a>
				</li>
				<li <s:if test="#session.part_page_number == 22">class="current"</s:if>>
					<a href="search_manager/listStore">收藏查询</a>
				</li>
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
				<li <s:if test="#session.part_page_number == 30">class="current"</s:if>>
					<a href="users/userList">用户列表</a>
				</li>
				<li <s:if test="#session.part_page_number == 31">class="current"</s:if>>
					<a href="users/addUser">添加用户</a>
				</li>
				<li <s:if test="#session.part_page_number == 32">class="current"</s:if>>
					<a href="users/updateUser">更新用户</a>
				</li>
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
				<li <s:if test="#session.part_page_number == 40">class="current"</s:if>>
					<a href="users/adminInfo">个人信息</a>
				</li>
				<li <s:if test="#session.part_page_number == 41">class="current"</s:if>>
					<a href="users/changeAdminPasswd">修改密码</a>
				</li>
				<li <s:if test="#session.part_page_number == 42">class="current"</s:if>>
					<a href="${RDF_CAS_HREF}/logout">退出系统</a>
				</li>
			</ul>
		</div>
	</div>
</div>
