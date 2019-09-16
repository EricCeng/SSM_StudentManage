<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>学生教学管理系统</title>
		<meta charset="utf-8">
	</head>
	<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
		  background="${pageContext.request.contextPath}/images/bkg.jpg">
	<br /><br />
	<br /><br />
	<center><h1>
		<font style="font-size:36px" face="黑体">学生教学管理系统</font></h1></center>
	<div ALIGN="center">
		<table border="0" width="400px" id="table1">
			<tr>
				<td height="100"></td>
				<td></td>
			</tr>
			<tr>
				<td class="login_msg" width="400" align="center">
			<fieldset style="width: auto; margin: 0 auto;">
				<legend>
					<font style="font-size:28px" face="宋体">
						登  录  界  面
					</font>
				</legend>
				<font color="red">
					<%-- 提示信息--%>
					<span id="message">${msg}</span>
				</font>
			<form action="admin/login" method="post">
				<ul style="text-align: center;">
					<br />
						账&nbsp;号：<input class="name" name="name" placeholder="请输入用户名">
					<br /><br />
						密&nbsp;码：<input type="password" name="password" class="pwd" placeholder="请输入密码">
					<br /><br />
					    <select name="usertype" class="role">
					       <option value="1">系统管理员</option>
					       <option value="2">学生</option>
					       <option value="3">教师</option>
					    </select>
					<br /><br />
						<button id="login">
							立即登录
						</button>
				</ul>
			</form>
		</fieldset>
		</table>
		</div>

		<script src="script/jquery-2.1.1.js" type="text/javascript"
			charset="UTF-8"></script>
	</body>
</html>
