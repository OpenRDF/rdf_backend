<%@ page language="java" import="java.util.*, java.net.*" pageEncoding="UTF-8"%>
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
							<form action="system_manager/searchAction" method="post">
								<input type="text" name="keyword" value="${keyword}" id="keyword" maxlength="100" style="width:474px; height:32px;" autocomplete="off"> <input type="submit" value="搜索"
									id="search-button" class="btn">
							</form>
						</div> <s:if test='%{resultMessage eq "success" }'>
							<div style="margin: 10px 40px;">
								<c:forEach items="${conceptList }" var="concept">
									<p>
										<span style="float: left; width: auto;">词条：${concept.cnName }</span> <span style="width: 20px; float: left; font-style: italic;">&nbsp;</span> <span
											style="font-style: italic; width: auto; float: left; margin-right: 100px;"> <a class="store" href='javascript:sotre("${concept.enName }");' style="display: block; width: auto;">(收藏该词条)</a></span>
									</p>
									<p>英文名称：${concept.enName }</p>
									<p>词条概念/定义：</p>
									<p>${concept.source }</p>
									<p>创建时间：${concept.bday }</p>
									<hr>
								</c:forEach>
								<p style="font-size: 14px; color: red">注意：以上结果仅供参考。</p>
							</div>
						</s:if> <s:else>
							<div style="height: 150px; text-align: center; margin-top: 20px;">${resultMessage }</div>
						</s:else>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function sotre(keyword){
		$.ajax({
		    type: 'get',
		    url: "system_manager/storeAction?keyword=" + keyword ,
		    data:{}, 
		    success: function(date){alert(date);},
		    error: function(){alert("ajax 失败!");}
		});
  }
</script>