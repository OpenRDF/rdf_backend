<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="right-box">
	<div class="right-box-inner">
		<div class="box-hd">
			<h3 class="title">搜索管理</h3>
			<div class="more">
				<div class="box-order-list-type">
					<a class="float-left" href="search_manager/searchStatistics">搜索统计</a> <span class="sep float-left">|</span> <a class="float-left" href="search_manager/searchHistory">搜索记录</a> <span
						class="sep float-left">|</span> <a class="current float-left" href="search_manager/listStore">收藏查询</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<s:if test='%{resultMessage eq "success" }'>
					<table width="100%" id="rdf_tab" border="1" class="rdf_tab">
						<thead>
							<th width="10%">编号</th>
							<th width="35%">词条</th>
							<th width="30%">用户</th>
							<th width="50%">收藏时间</th>
						</thead>
						<s:iterator value="conceptStoresList" var="conceptStores">
							<tr class="box_tr">
								<td>${conceptStores.id }</td>
								<td>${conceptStores.keyword}</td>
								<td>${conceptStores.userId }</td>
								<td>${conceptStores.storeTime }</td>
							</tr>
						</s:iterator>
					</table>
				</s:if>
				<s:else>
					<ul class="box-order-detail-list">
						<li class="box-order-detail-item">系统目前还没有收藏记录。</li>
					</ul>
				</s:else>
			</div>
		</div>
	</div>
</div>
