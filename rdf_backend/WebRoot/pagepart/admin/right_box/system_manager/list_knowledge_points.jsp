<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<a class="float-left" href="system_manager/searchConcept">查询知识点</a> <span class="sep float-left">|</span> <a class="float-left" href="system_manager/addConcept">添加知识点</a> <span
						class="sep float-left">|</span> <a class="float-left" href="system_manager/updateConcept">更新知识点</a> <span class="sep float-left">|</span> <a class="current float-left"
						href="system_manager/listConcept">知识点列表</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<%--
				<s:if test="%{#userList.size()==0}">
					<ul class="box-order-detail-list">
						<li class="box-order-detail-item">您目前还没有查询知识点。</li>
					</ul>
				</s:if>
				<s:else>
				 --%>
				<table width="100%" id="rdf_tab" border="1" class="rdf_tab">
					<thead>
						<th width="20%">中文名称</th>
						<th width="20%">英文名称</th>
						<th width="20%">概念/定义</th>
						<th width="15%">更新时间</th>

						<th width="25%">操作</th>
					</thead>
					<c:forEach items="${conceptList }" var="concept">
						<tr class="box_tr">
							<td>${concept.cnName }</td>
							<td>${concept.enName }</td>
							<td><script type="text/javascript">var source ="${concept.source }"; if(source.length > 9){document.write(source.substr(0, 6)+"...");}else{document.write(source)} </script></td>
							<td>${concept.bday }</td>
							<td><a href="#">详细信息</a> <span>|</span> <a href="#">更新</a> <span>|</span> <a href="#">删除</a></td>
						</tr>
					</c:forEach>
				</table>
				<%-- </s:else> --%>
			</div>
		</div>
	</div>
</div>
<!-- .right-box END -->