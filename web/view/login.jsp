<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/24
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
<%--
数据模型 mode
服务层 service
视图层 view
--%>
<form action="controller.jsp" method="post" >
    <input name="user"><br/>
    <input name="pwd" type="password"><br/>
    <input type="checkbox" name="autoLogin" value="1">自动登录<br/>
    <input type="submit" value="登陆">
<%=request.getAttribute("msg")%>
</form>
</body>
</html>
