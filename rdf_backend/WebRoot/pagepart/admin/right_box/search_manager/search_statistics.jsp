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
					<a class="current float-left" href="search_manager/searchStatistics">搜索统计</a> <span class="sep float-left">|</span> <a class="float-left" href="search_manager/searchHistory">搜索记录</a> <span
						class="sep float-left">|</span> <a class="float-left" href="search_manager/listStore">收藏查询</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<s:if test='%{resultMessage eq "success" }'>
					<table width="100%" id="rdf_tab" border="1" class="rdf_tab">
						<thead>
							<th width="20%">次序</th>
							<th width="25%">概念/定义</th>
							<th width="20%">搜索次数</th>
							<th width="10%">结果</th>
							<th width="25%">最后搜索</th>
						</thead>
						<s:iterator value="searchStatisticsList" var="searchStatistics" status="i">
							<tr class="box_tr">
								<td>${i.count}</td>
								<td>${searchStatistics.id.keyWord }</td>
								<td>${searchStatistics.id.searchCount }</td>
								<td><s:if test="id.successCount > 0">成功</s:if>
								<s:else>失败</s:else></td>
								<td>${searchStatistics.id.lastSearchTime }</td>
							</tr>
						</s:iterator>
					</table>
				</s:if>
				<s:else>
					<ul class="box-order-detail-list">
						<li class="box-order-detail-item">系统目前还没有搜索统计。</li>
					</ul>
				</s:else>
			</div>
		</div>
	</div>
</div>
