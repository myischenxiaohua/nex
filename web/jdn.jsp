<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page import="javax.naming.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>测试JNDI</title>
</head>
<body>
<%
    //javax.naming.Context提供了查找JNDI Resource的接口
    Context ctx = new InitialContext();
    //java:comp/env/为前缀
    String testjndi = (String) ctx.lookup("java:comp/env/tjndi");
    out.print("test jndi：" + testjndi);
%>
</body>
</html>