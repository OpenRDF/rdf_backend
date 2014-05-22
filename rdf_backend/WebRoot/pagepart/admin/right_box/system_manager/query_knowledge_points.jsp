<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- .right-box -->
<div class="right-box">
	<div class="right-box-inner">
		<div class="box-hd">
			<h3 class="title">系统管理</h3>
			<div class="more">
				<div class="box-order-list-type">
					<a class="current float-left" href="system_manager/searchConcept">查询知识点</a> <span class="sep float-left">|</span> <a class="float-left" href="system_manager/addConcept">添加知识点</a> <span
						class="sep float-left">|</span> <a class="float-left" href="system_manager/updateConcept">更新知识点</a> <span class="sep float-left">|</span> <a class="float-left" href="system_manager/listConcept">知识点列表</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<ul class="box-order-detail-list">
					<li class="box-order-detail-item">
						<div class="container-logo-backend"></div>
						<div class="search-div">
							<input type="text" name="keyword" id="keyword" maxlength="100" style="width:474px; height:32px;" autocomplete="off"> <input type="submit" value="搜索" id="search-button" class="btn">
						</div>
						<div style="height: 150px;"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- .right-box END -->