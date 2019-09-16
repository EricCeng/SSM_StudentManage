<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<link href="<c:url value="../styles/main.css" />" type="text/css" rel="stylesheet" />
<title>个人信息</title>
<base href="<c:url value="/" />" />
</head>
<body>
<div class="main">
	<h2 class="title">
		<span>个人信息</span>
		</h2>
  <form>
  <fieldset>
	  <legend></legend>

    <c:if test="${user.usertype==1}">
        <br/>
        &nbsp;&nbsp;
        <td>登录名：</td>
        <td>${user.name}</td>
        <br/><br/>

        &nbsp;&nbsp;
        <td>密码：</td>
        <td>${user.password}</td>
        <br/><br/>

    </c:if>

    <c:if test="${user.usertype==2}">
      <br/>
      &nbsp;&nbsp;
      <td>姓名：</td>
      <td>${user.name}</td>
      <br/><br/>

      &nbsp;&nbsp;
      <td>性别：</td>
      <td>
        <c:if test="${user.sex==0}">男</c:if>
          <c:if test="${user.sex==1}">女</c:if>

        </td>
      <br/><br/>

      &nbsp;&nbsp;
      <td>电话：</td>
      <td>${user.tel}</td>
      <br/><br/>

      &nbsp;&nbsp;
      <td>居住地址：</td>
      <td>${user.address}</td>
      <br/><br/>

      &nbsp;&nbsp;
      <td>班级：</td>
      <td>${user.classid}</td>
      <br/><br/>
    </c:if>

    <c:if test="${user.usertype==3}">
        <br/>
        &nbsp;&nbsp;
        <td>姓名：</td>
        <td>${user.name}</td>
        <br/><br/>

        &nbsp;&nbsp;
        <td>登录名：</td>
        <td>${user.loginname}</td>
        <br/><br/>

        &nbsp;&nbsp;
        <td>密码：</td>
        <td>${user.password}</td>
        <br/><br/>

    </c:if>

</fieldset>
  </form>
  </body>
</html>
