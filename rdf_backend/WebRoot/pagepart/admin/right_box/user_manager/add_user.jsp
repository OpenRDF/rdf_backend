<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- .right-box -->
<div class="right-box">
	<div class="right-box-inner">
		<div class="box-hd">
			<h3 class="title">用户管理</h3>
			<div class="more">
				<div class="box-order-list-type">
					<a class="float-left" href="users/userList">用户列表</a> <span class="sep float-left">|</span> <a class="current float-left" href="users/addUser">添加用户</a> <span class="sep float-left">|</span> <a
						class="float-left" href="users/updateUser">更新用户</a>
				</div>
			</div>
		</div>
		<div class="box-bd">
			<div class="box-order-list-type">
				<ul class="box-order-detail-list">
					<li class="box-order-detail-item">
						<form id="dreamduform" method="post" action="users/addUserAction">
							<table>
								<tr>
									<td>用户名：</td>
									<td><input class="rdf_input" type="text" name="user.userName" autocomplete="off" placeholder="用户名"></td>
								</tr>
								<tr>
									<td>登录邮箱：</td>
									<td><input class="rdf_input" type="text" name="user.userEmail" autocomplete="off" placeholder="登录邮箱"></td>
								</tr>
								<tr>
									<td>登录密码：</td>
									<td><input class="rdf_input" type="password" name="user.userPass" autocomplete="off" placeholder="登录密码"></td>
								</tr>
								<tr>
									<td>重复密码：</td>
									<td><input class="rdf_input" type="password" name="" autocomplete="off" placeholder="重复密码"></td>
								</tr>
								<tr>
									<td>性别：</td>
									<td><input class="rdf_input" type="text" name="user.userSex" autocomplete="off" placeholder="性别"></td>
								</tr>
								<tr>
									<td>出生年月：</td>
									<td><input class="rdf_input" type="text" name="user.userBirthday" autocomplete="off" placeholder="出生年月"></td>
								</tr>
								<tr>
									<td>住址：</td>
									<td><input class="rdf_input" type="text" name="user.userAddress" autocomplete="off" placeholder="住址"></td>
								</tr>
								<tr>
									<td>邮编：</td>
									<td><input class="rdf_input" type="text" name="user.userPostCode" autocomplete="off" placeholder="邮编"></td>
								</tr>
								<tr>
									<td>QQ：</td>
									<td><input class="rdf_input" type="text" name="user.userQQ" autocomplete="off" placeholder="QQ"></td>
								</tr>
								<tr>
									<td>手机：</td>
									<td><input class="rdf_input" type="text" name="user.userPhone" autocomplete="off" placeholder="手机"></td>
								</tr>
								<tr>
									<td>个人简介：</td>
									<td><input class="rdf_input" type="text" name="user.userBriefInfroduction" autocomplete="off" placeholder="个人简介"></td>
								</tr>
								<tr>
									<td colspan="2">
									<input class="button_style" type="submit" value="确认注册" id="submit" name="submit" /> 
									<input class="button_style" type="reset" value="重置" id="reset" name="reset" />
									</td>
								</tr>
							</table>
						</form>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!-- .right-box END -->