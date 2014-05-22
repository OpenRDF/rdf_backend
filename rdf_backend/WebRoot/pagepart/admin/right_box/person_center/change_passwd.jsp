<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
			<!-- .right-box -->
			<div class="right-box">
				<div class="right-box-inner">
					<div class="box-hd">
						<h3 class="title">个人中心</h3>
						<div class="more">
							<div class="box-order-list-type">
								<a class="float-left" href="users/adminInfo">个人信息</a> 
									<span class="sep float-left">|</span> 
								<a class="current float-left" href="users/changeAdminPasswd">修改密码</a> 
									<span class="sep float-left">|</span> 
								<a class="float-left" href="${RDF_CAS_HREF}/logout">退出系统</a> 
							</div>
						</div>
					</div>
					<div class="box-bd">
						<div class="box-order-list-type">
							<ul class="box-order-detail-list">
								<li class="box-order-detail-item">您目前还没有查询知识点。</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- .right-box END -->