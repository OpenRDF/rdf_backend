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
			<h3 class="title">系统管理</h3>
			<div class="more">
				<div class="box-order-list-type">
					<a class="float-left" href="system_manager/searchConcept">查询知识点</a> <span class="sep float-left">|</span> <a class="current float-left" href="system_manager/addConcept">添加知识点</a> <span
						class="sep float-left">|</span> <a class="float-left" href="system_manager/updateConcept">更新知识点</a> <span class="sep float-left">|</span> <a class="float-left" href="system_manager/listConcept">知识点列表</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<ul class="box-order-detail-list">
					<li class="box-order-detail-item">更新知识点</li>
					<li class="box-order-detail-item">
						<form id="dreamduform" method="post" action="system_manager/updateConceptAction">
							<table>
								<s:if test='{#resultMessage!="" }'>
									<tr>
										<td colspan="2" style="color:#ff4a00; height: 40px;">${resultMessage }</td>
									</tr>
								</s:if>
								<tr>
									<td>名词（中文）：</td>
									<td><input class="rdf_input" type="text" name="concept.cnName" autocomplete="off" placeholder="名词"></td>
								</tr>
								<tr>
									<td>名词（英文）：</td>
									<td><input class="rdf_input" type="text" name="concept.enName" autocomplete="off" placeholder="名词"></td>
								</tr>
								<tr>
									<td>概念/定义：</td>
									<td><input class="rdf_input" type="text" name="concept.source" autocomplete="off" placeholder="名词的概念"></td>
								</tr>
								<tr>
									<td colspan="2" style="margin-left: 30px; color:#ff4a00; height: 30px;"></td>
								</tr>
								<tr>
									<td colspan="2"><input class="button_style" type="submit" value="确认更新" id="submit" name="submit" /> <input class="button_style" type="reset" value="重置" id="reset" name="reset" /></td>
								</tr>
							</table>
						</form>

					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
