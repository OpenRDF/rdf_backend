<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- .right-box -->
<div class="right-box">
	<div class="right-box-inner">
		<div class="box-hd">
			<h3 class="title">用户管理</h3>
			<div class="more">
				<div class="box-order-list-type">
					<a class="current float-left" href="users/userList">用户列表</a> <span class="sep float-left">|</span> <a class="float-left" href="users/addUser">添加用户</a> <span class="sep float-left">|</span> <a
						class="float-left" href="users/updateUser">更新用户</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<s:if test="%{#userList.size()==0}">
					<ul class="box-order-detail-list">
						<li class="box-order-detail-item">您目前还没有查询知识点。</li>
					</ul>
				</s:if>
				<s:else>
					<table width="100%" id="rdf_tab" border="1" class="rdf_tab">
						<thead>
							<th width="15%">用户名</th>
							<th width="20%">登录邮箱</th>
							<th width="14%">邮箱认证</th>
							<th width="26%">创建时间</th>

							<th width="40%">操作</th>
						</thead>
						<s:iterator value="userList" var="user">
							<tr class="box_tr">
								<td>${user.userName }</td>
								<td>${user.userEmail }</td>
								<td><s:if test="<s:property value='#user.emailAuthentication'/>==1">
										是
									</s:if> <s:else>
										否
									</s:else></td>
								<td>${user.accountCreateTime }</td>
								<td><a href="#">详细信息</a> <span>|</span> <a href="#">更新</a> <span>|</span> <a href="#">删除</a></td>
							</tr>
						</s:iterator>
					</table>
				</s:else>


			</div>
		</div>
	</div>
</div>
<!-- .right-box END -->