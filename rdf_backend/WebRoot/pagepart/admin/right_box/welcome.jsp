<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
			<div class="right-box">
				<div class="right-box-inner">
					<div class="box-hd">
						<h3 class="title">Welcome</h3>
					</div>
					<div class="box-bd">
						<div class="box-order-list-type">
							<ul class="box-order-detail-list">
								<li class="box-order-detail-item">欢迎使用知识管理系统!!</li>
								<li class="box-order-detail-item">知识库管理系统是基于RDF的知识检索系统，该系统使用SSH框架编写，集成耶鲁大学开源项目CAS（中央认证系统）。该系统以语义网知识为基础，以RDF操作为核心。</li>
								<li class="box-order-detail-item">课程知识库系统共分为3各项目，分别为：</li>
								<li class="box-order-detail-item">&nbsp;&nbsp;&nbsp;&nbsp;（1）中央认证系统（CAS）</li>
								<li class="box-order-detail-item">&nbsp;&nbsp;&nbsp;&nbsp;（2）检索前台（rdf_fronts）</li>
								<li class="box-order-detail-item">&nbsp;&nbsp;&nbsp;&nbsp;（1）管理后台（rdf_backend）</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
