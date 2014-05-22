<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- .right-box -->
<div class="right-box">
	<div class="right-box-inner">
		<div class="box-hd">
			<h3 class="title">搜索管理</h3>
			<div class="more">
				<div class="box-order-list-type">
					<div class="box-order-list-type">
						<a class="float-left" href="search_manager/searchStatistics">搜索统计</a> <span class="sep float-left">|</span> <a class="current float-left" href="search_manager/searchHistory">搜索记录</a> <span
							class="sep float-left">|</span> <a class="float-left" href="search_manager/listStore">收藏查询</a>
					</div>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<%-- 
							<ul class="box-order-detail-list">
								<li class="box-order-detail-item">您目前还没有查询知识点。</li>
							</ul>--%>
				<table width="100%" id="rdf_tab" border="1" class="rdf_tab">
					<thead>
						<th width="20%">编号</th>
						<th width="20%">概念/定义</th>
						<th width="20%">搜索用户</th>
						<th width="15%">搜索时间</th>
					</thead>
					<s:iterator value="userList" var="user">
						<tr class="box_tr">
							<td>${user.userName }</td>
							<td>${user.userEmail }</td>
							<td></td>
							<td>${user.accountCreateTime }</td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</div>
	</div>
</div>
<!-- .right-box END -->